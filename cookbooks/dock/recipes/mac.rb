# Mountain Lion inexplicably includes some sort of 'dockfixup' plist in /Library/Preferences that adds Notes to the User Template dock. Not very useful. Not sure why Apple does it.
file "/Library/Preferences/com.apple.dockfixup.plist" do
  action :delete
end

# if this file exists we do not want to regenerate the dock plist - it has already been generated 
if IO::File.exist?("/tmp/dockregen.tmp") 
  node.set['dock']['regenerate'] = false
end

cookbook_file "/tmp/seticon.zip"

execute "unzip -o /tmp/seticon.zip -d /tmp/"

file "/tmp/seticon" do
  owner "root"
  group "wheel"
  mode "0755"
  action :touch
end

dock_add "/Applications/Launchpad.app" do
  all_users true
end

dock_add "/Applications/Mission Control.app" do
  all_users true
  restart true
end



# dock_add "/Applications/TextMate.app" do
#   all_users true
# end
# 
# dock_add "/Applications/Utilities/Terminal.app" do
#   all_users true
# end
# 
# dock_add "/Applications/Google Chrome.app" do
#   all_users true
#   group "Browsers"
# end
# 
# dock_add "/Applications/Safari.app" do
#   all_users true
#   group "Browsers"
# end
# 
# dock_add "/Applications/Firefox.app" do
#   all_users true
#   group "Browsers"
# 
# end
# 
# dock_add "/Applications/Calculator.app" do
#   all_users true
# end
# 
# dock_add "Adobe" do
#   all_users true
#   action :folder_create
#   show_as "grid"
#   display_as "folder"
#   arrangement "name"
# end
# 
# dock_add "/Applications/Adobe Photoshop CS4/Adobe Photoshop CS4.app" do
#   all_users true
#   group "Adobe"
# end
# 
# # dock_add "/Applications/Adobe InDesign CS4/Adobe InDesign CS4.app" do
# #   all_users true
# #   group "Adobe"
# # end
# 
# dock_add "/Applications/Adobe Bridge CS4/Adobe Bridge CS4.app" do
#   all_users true
#   group "Adobe"
# end
# 
# dock_add "/Applications/Adobe Illustrator CS4/Adobe Illustrator.app" do
#   all_users true
#   group "Adobe"
#   restart true
# end
# 
