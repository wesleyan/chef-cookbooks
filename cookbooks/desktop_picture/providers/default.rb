#
# Cookbook Name:: desktop_picture
# Provider:: package
#
# Copyright 2012, Jonathan Lyons
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

action :generate do
  directory "/var/generated_files" do
    owner "root"
    group "wheel"
    mode "0777"
    action :create
  end
  
  cookbook_file "/temp/generate_picture.rb" do
    owner "root"
    group "wheel"
    mode "755"
  end
  
  execute "/temp/generate_picture.rb /var/generated_files/background.jpg"  
end
  
action :set do
  template "/tmp/com.apple.desktop.plist" do
    source "com.apple.desktop.plist.erb"
    mode 0777
    owner "root"
    group "wheel"
    variables({
      :name => new_resource.name
    })
  end
  
  
  users = `dscacheutil -q user`.split("\n\n")
  for user in users do
    uid = 0
    name = ""
    user_dir = ""
    lines = user.split("\n")
   
    for line in lines 
      if line.split(": ")[0] == "uid"
        uid = line.split(": ")[1].to_i
     end
     if(line.split(": ")[0] == "name")
       name = line.split(": ")[1]
     end
     if(line.split(": ")[0] == "dir")
       user_dir = line.split(": ")[1]
     end
    end
  
    if uid >= 500
      puts "#{uid} #{name} #{user_dir}"
      
      file "/Users/#{name}/Library/Preferences/com.apple.desktop.plist" do
        action :delete
      end 
      
      directory "/Users/#{name}/Library/Preferences/" do
        recursive true
        owner "#{name}"
        mode 0700
        group "staff"
        action :create
      end
      
      execute "convert to binary" do
        command "plutil -convert binary1 -o '/Users/#{name}/Library/Preferences/com.apple.desktop.plist' /tmp/com.apple.desktop.plist"
        action :run
      end   
      
      file "/Users/#{name}/Library/Preferences/com.apple.desktop.plist" do
        owner name
        group "staff"
        mode "0600"
        action :touch
      end 
    
    end
  end
  
  file "/System/Library/User Template/English.lproj/Library/Preferences/com.apple.desktop.plist" do
    action :delete
  end 
      
    execute "convert to binary" do
      command "plutil -convert binary1 -o '/System/Library/User Template/English.lproj/Library/Preferences/com.apple.desktop.plist' /tmp/com.apple.desktop.plist"
      action :run
    end   
    
    file "/System/Library/User Template/English.lproj/Library/Preferences/com.apple.desktop.plist" do
      owner "root"
      group "wheel"
      mode "0600"
      action :touch
    end
    execute "killall cfprefsd"
    execute "killall Dock"
end

