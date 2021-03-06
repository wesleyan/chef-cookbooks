#
# Cookbook Name:: dmg
# Provider:: package
#
# Copyright 2011, Joshua Timberman
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'chef/version_constraint'

include Chef::Mixin::ShellOut

use_inline_resources if defined?(use_inline_resources)

def load_current_resource
  require 'plist'
  @dmgpkg = Chef::Resource::DmgPackage.new(new_resource.name)
  @dmgpkg.app(new_resource.app)
  Chef::Log.debug("Checking for application #{new_resource.app}")
  @dmgpkg.installed(installed?)
end

action :install do
  
  volumes_dir = new_resource.volumes_dir ? new_resource.volumes_dir : new_resource.app
  dmg_name = new_resource.dmg_name ? new_resource.dmg_name : new_resource.app
  dmg_file = "#{Chef::Config[:file_cache_path]}/#{dmg_name}.dmg"
  shouldRestart = false
  unless @dmgpkg.installed
    shouldRestart = new_resource.restart
    remote_file "#{dmg_file} - #{@dmgpkg.name}" do
      path dmg_file
      source new_resource.source
      checksum new_resource.checksum if new_resource.checksum
      backup false
      only_if { new_resource.source }
    end

    passphrase_cmd = new_resource.dmg_passphrase ? "-passphrase #{new_resource.dmg_passphrase}" : ''
    ruby_block "attach #{dmg_file}" do
      block do
        cmd = shell_out("hdiutil imageinfo #{passphrase_cmd} '#{dmg_file}' | grep -q 'Software License Agreement: true'")
        software_license_agreement = (cmd.exitstatus == 0)
        fail "Requires EULA Acceptance; add 'accept_eula true' to package resource" if software_license_agreement && !new_resource.accept_eula
        accept_eula_cmd = new_resource.accept_eula ? 'echo Y | PAGER=true' : ''
        shell_out!("#{accept_eula_cmd} hdiutil attach #{passphrase_cmd} '#{dmg_file}' -quiet")
      end
      not_if "hdiutil info #{passphrase_cmd} | grep -q 'image-path.*#{dmg_file}'"
    end

    case new_resource.type
    # Case for apps contained with directories that include needed support or auxilary files such as Audacity or Eclipse
    when "dir"
      execute "rsync --force --recursive --links --perms --executability --owner --group --times '/Volumes/#{volumes_dir}/#{new_resource.app}' '#{new_resource.destination}'" do
        user new_resource.owner if new_resource.owner
      end

      directory "#{new_resource.destination}/#{new_resource.app}" do
        mode 0755
        ignore_failure true
      end

      if new_resource.package_id and new_resource.version
        file "/var/db/receipts/#{new_resource.package_id}.plist" do
          content ({"PackageVersion" => new_resource.version}).to_plist.dump
          mode 0644 # -rw-r--r--
          owner "root"
          group "wheel"
          action :create
        end
      end

    when "app"
      execute "rsync --force --recursive --links --perms --executability --owner --group --times '/Volumes/#{volumes_dir}/#{new_resource.app}.app' '#{new_resource.destination}'" do
        user new_resource.owner if new_resource.owner
      end

      file "#{new_resource.destination}/#{new_resource.app}.app/Contents/MacOS/#{new_resource.app}" do
        mode 0755
        ignore_failure true
      end

      if new_resource.version and new_resource.package_id
        file "/var/db/receipts/#{new_resource.package_id}.plist" do        
          content ({"PackageVersion" => new_resource.version}).to_plist.dump 
          mode 0644 # -rw-r--r--
          owner "root"
          group "wheel"
          action :create
        end
      end

    when "mpkg", "pkg"
      # Apply user supplied choices via XML
      choices = new_resource.xml_choices
      cmd = "sudo installer -pkg '/Volumes/#{volumes_dir}/#{new_resource.app}.#{new_resource.type}' -target / -dumplog -verboseR -allowUntrusted"
      if choices
        choiceHash = []
        choices.each do |choice|
          choiceHash << { "choiceIdentifier" => choice[0], "choiceAttribute" => choice[1], "attributeSetting" => choice[2] }
        end
        xmlName = "/tmp/" 
        xmlName << (0...8).map{(65+rand(26)).chr}.join
        xmlName << ".plist"
        f = ::File.new(xmlName, 'w')
        f.puts Plist::Emit.dump(choiceHash)
        f.close
        cmd << " -applyChoiceChangesXML '#{xmlName}'"
      end
      execute cmd.gsub("'",'"') do
        # Prevent cfprefsd from holding up hdiutil detach for certain disk images
        environment('__CFPREFERENCES_AVOID_DAEMON' => '1') if Gem::Version.new(node['platform_version']) >= Gem::Version.new('10.8')
      end
     
      if (new_resource.version and new_resource.package_id)
      ruby_block "Set Receipt Version" do
  	      block do
		      if ::File.exists?("/var/db/receipts/#{new_resource.package_id}.plist")
			      currPKG = Plist::parse_xml(`plutil -convert xml1 -o - /var/db/receipts/#{new_resource.package_id}.plist`)
			      currPKG = Plist::parse_xml(currPKG) if currPKG.class == String
			      currPKG['PackageVersion'] = new_resource.version
			      ::File.delete("/var/db/receipts/#{new_resource.package_id}.plist")
		      else
			      currPKG = {"PackageVersion"=>new_resource.version}
		      end
		      f = ::File.open("/tmp/#{new_resource.package_id}.plist","w")
		      f.puts Plist::Emit.dump(currPKG)
		      f.close
		      system("plutil -convert binary1 -o /var/db/receipts/#{new_resource.package_id}.plist /tmp/#{new_resource.package_id}.plist")
		      ::File.delete("/tmp/#{new_resource.package_id}.plist")
	      end
      end
      end
    # Case for custom command line installers like SPSS and VectorWorks.
    when "custom"
      execute "'/Volumes/#{volumes_dir}/#{new_resource.app}' #{new_resource.options}"
      if new_resource.version and new_resource.package_id
        file "/var/db/receipts/#{new_resource.package_id}.plist" do        
          content ({"PackageVersion" => new_resource.version}).to_plist.dump 
          mode 0644 # -rw-r--r--
          owner "root"
          group "wheel"
          action :create
        end
      end
    end
  end
  
  ruby_block "unmount" do
     block do
       if(::File.directory?("/Volumes/#{volumes_dir}") && new_resource.unmount)
         system("hdiutil detach '/Volumes/#{volumes_dir}' || hdiutil detach '/Volumes/#{volumes_dir}' -force")
       end
       system("shutdown -r now") if shouldRestart
      end
   end
end

private

def installed?
  begin
    if new_resource.version && new_resource.package_id
      result = Plist::parse_xml(`plutil -convert xml1 -o - /var/db/receipts/#{new_resource.package_id}.plist`)
      result = Plist::parse_xml(result) if result.class == String
      version_checker = Chef::VersionConstraint.new("<= #{result['PackageVersion']}")
      return version_checker.include? new_resource.version
    elsif ::File.directory?("#{new_resource.destination}/#{new_resource.app}.app")
      Chef::Log.info "Already installed; to upgrade, remove \"#{new_resource.destination}/#{new_resource.app}.app\""
      true
    elsif shell_out("pkgutil --pkgs='#{new_resource.package_id}'").exitstatus == 0
      Chef::Log.info "Already installed; to upgrade, try \"sudo pkgutil --forget '#{new_resource.package_id}'\""
      true
    else
      false
    end
  rescue
    return false
  end
end
