



# action :clear do
#   file "/Users/jclyons/Library/Preferences/com.apple.dock.plist" do
#     action :delete
#   end
#   
#   
#     
#     cookbook_file "/tmp/com.apple.dock.plist" do
#       source "com.apple.dock.plist"
#       owner "root"
#       group "wheel"
#       mode "0777"
#       action :create
#     end
#    
# users = `dscacheutil -q user`.split("\n\n")
# for user in users do
#   uid = 0
#   name = ""
#   user_dir = ""
#   lines = user.split("\n")
#  
#   for line in lines 
#     if line.split(": ")[0] == "uid"
#       uid = line.split(": ")[1].to_i
#    end
#    if(line.split(": ")[0] == "name")
#      name = line.split(": ")[1]
#    end
#    if(line.split(": ")[0] == "dir")
#      user_dir = line.split(": ")[1]
#    end
#   end
# 
#   if uid >= 500
#     puts "#{uid} #{name} #{user_dir}"
#     
#     directory "/Users/#{name}/Library/Preferences" do
#       owner name
#       group "staff"
#       recursive true
#       action :create
#     end
#     
#     file "/Users/#{name}/Library/Preferences/com.apple.dock.plist" do
#       action :delete
#     end 
#     
#     execute "convert to binary" do
#       command "plutil -convert binary1 -o '/Users/#{name}/Library/Preferences/com.apple.dock.plist' /tmp/com.apple.dock.plist"
#       action :run
#     end   
#     
#     file "/Users/#{name}/Library/Preferences/com.apple.desktop.plist" do
#       owner name
#       group "staff"
#       mode "0600"
#       action :touch
#     end 
#   
#   end
# end
#    
#     
#    file "/System/Library/User Template/English.lproj/Library/Preferences/com.apple.dock.plist" do
#      action :delete
#    end 
#        
#      execute "convert to binary" do
#        command "plutil -convert binary1 -o '/System/Library/User Template/English.lproj/Library/Preferences/com.apple.dock.plist' /tmp/com.apple.dock.plist"
#        action :run
#      end   
#      
#      file "/System/Library/User Template/English.lproj/Library/Preferences/com.apple.dock.plist" do
#        owner "root"
#        group "wheel"
#        mode "0600"
#        action :touch
#      end
#      
#     if new_resource.name
#       dock_add new_resource.name
#     end
# end
