homebrew_go = "#{Chef::Config[:file_cache_path]}/homebrew_go"

remote_file homebrew_go do
  source "https://raw.github.com/mxcl/homebrew/go"
  mode 00755
end

execute homebrew_go do
  user node['homebrew']['user']
  not_if { File.exist? '/usr/local/bin/brew' }
end

package 'git' do
  not_if "which git"
end

execute "change /usr/local/lib permissions" do
  command "chown -R #{node['homebrew']['user']} /usr/local/lib"
  only_if { File.exist? '/usr/local/lib'}
end

execute "change /usr/local/etc permissions" do
  command "chown -R #{node['homebrew']['user']} /usr/local/etc"
  only_if { File.exist? '/usr/local/etc'}
end
  
execute "change cellar permissions" do
  command "chown -R #{node['homebrew']['user']} /usr/local/Cellar"
  only_if { File.exist? '/usr/local/Cellar' }
end

execute "update homebrew from github" do
  user node['homebrew']['user']
  command "/usr/local/bin/brew update || true"
  command "/usr/local/bin/brew upgrade || true"
end

execute "clear taps" do
  command "rm -rf /usr/local/Library/Taps/*"
end

ruby_block "Add homebrew binaries to system path" do
  block do
    content = ''
    ::File.open("/etc/bashrc", "r") do |f|
      content = f.read()
    end
    unless content =~ /export PATH=\/usr\/local\/bin:$PATH/
      ::File.open("/etc/bashrc", "a") do |f|
        f.puts "export PATH=/usr/local/bin:$PATH"
      end
    end
  end
end

# definitely should already exist, just a check
directory "/usr/local/include" do
  recursive true
end

execute "Allow homebrew permissions" do
  command "chmod 777 /usr/local/include"
end
