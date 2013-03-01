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

require 'plist'

def load_current_resource
  @dmgpkg = Chef::Resource::DmgPackage.new(new_resource.name)
  @dmgpkg.app(new_resource.app)
  Chef::Log.debug("Checking for application #{new_resource.app}")
  @dmgpkg.installed(installed?)
#  @dmgpkg.mounted
end

action :install do

  volumes_dir = new_resource.volumes_dir ? new_resource.volumes_dir : new_resource.app
  dmg_name = new_resource.dmg_name ? new_resource.dmg_name : new_resource.app
  dmg_file = "#{Chef::Config[:file_cache_path]}/#{dmg_name}.dmg"

  unless @dmgpkg.installed
      puts "blah"
    remote_file "#{dmg_file} - #{@dmgpkg.name}" do
      path dmg_file
      source new_resource.source
      checksum new_resource.checksum if new_resource.checksum
      only_if { new_resource.source }
    end

    passphrase_cmd = new_resource.dmg_passphrase ? "-passphrase #{new_resource.dmg_passphrase}" : ""


    ruby_block "attach #{dmg_file}" do
      block do
          if(!::File.directory?("/Volumes/#{volumes_dir}"))
            software_license_agreement = system("hdiutil imageinfo #{passphrase_cmd} '#{dmg_file}' | grep -q 'Software License Agreement: true'")
            raise "Requires EULA Acceptance; add 'accept_eula true' to package resource" if software_license_agreement && !new_resource.accept_eula
            accept_eula_cmd = new_resource.accept_eula ? "echo Y |" : ""
            system "#{accept_eula_cmd} hdiutil attach #{passphrase_cmd} '#{dmg_file}'"
          end
          not_if "hdiutil info #{passphrase_cmd} | grep -q 'image-path.*#{dmg_file}'"
      end
    end
    
    case new_resource.type
    when "dir"
      execute "cp -R '/Volumes/#{volumes_dir}/#{new_resource.app}' '#{new_resource.destination}'"
      directory "#{new_resource.destination}/#{new_resource.app}" do
        mode 0755
        ignore_failure true
      end
      file "/var/db/receipts/#{new_resouce.package_id}.plist" do
        content ({"PackageVersion" => new_resource.version}).to_plist.dump
        mode 0644 # -rw-r--r--
        owner "root"
        group "wheel"
        action :create
        only_if do
          new_resource.version and new_resource.package_id
        end
      end
    when "app"
      execute "cp -R '/Volumes/#{volumes_dir}/#{new_resource.app}.app' '#{new_resource.destination}'"
      file "#{new_resource.destination}/#{new_resource.app}.app/Contents/MacOS/#{new_resource.app}" do
        mode 0755
        ignore_failure true
      end
      file "/var/db/receipts/#{new_resource.package_id}.plist" do        
        content ({"PackageVersion" => new_resource.version}).to_plist.dump 
        mode 0644 # -rw-r--r--
        owner "root"
        group "wheel"
        action :create
        only_if do
          new_resource.version and new_resource.package_id
        end
      end
    when "mpkg", "pkg"
      execute "sudo installer -pkg '/Volumes/#{volumes_dir}/#{new_resource.app}.#{new_resource.type}' -target / -dumplog -verboseR" do
 #       returns [0, 1]
      end  
    when "custom"
      if(new_resource.command)
        execute new_resource.name do
          command "'/Volumes/#{volumes_dir}/#{new_resource.command}"
        end
      end
    end
    
    if(new_resource.sleep_after_install > 0) 
      sleep new_resource.sleep_after_install
    end
    puts "blah2"
  end
  
  ruby_block "unmount" do
     block do
       if(::File.directory?("/Volumes/#{volumes_dir}") && new_resource.unmount)
         system("hdiutil detach '/Volumes/#{volumes_dir}'")
       end
      end
   end
end

private

def mounted? 
  # 
  # ::File.directory?("/Volumes/#{volumes_dir}")
end

def installed?
  if new_resource.version and new_resource.package_id
      system("plutil -convert xml1 -o /tmp/#{new_resource.package_id}.plist /var/db/receipts/#{new_resource.package_id}.plist")
      result = Plist::parse_xml("/tmp/#{new_resource.package_id}.plist")
	  File.delete("/tmp/#{new_resource.package_id}.plist")
      return false unless result and result['PackageVersion'] and result['PackageVersion'] =~ /^\d+(\.\d+)+$/
	  return Gem::Version.new(result['PackageVersion']) >= Gem::Version.new(new_resource.version)
  elsif new_resource.package_id
    return system("pkgutil --pkgs=#{new_resource.package_id}")
  return ::File.directory?("#{new_resource.destination}/#{new_resource.app}.app")
end
