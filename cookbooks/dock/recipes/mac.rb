# Dock::mac is the standard Mac dock

# Create initial dock named "Mac"
dock "Mac" do
  action :create
end

dock_application "/Applications/Launchpad.app" do
  dock "Mac"
  action :add
end

dock_application "/Applications/Mission Control.app" do
  dock "Mac"
  action :add
end

# Download Adobe group icon
cookbook_file "/tmp/adobe.png"


# # Create dock folder, if it does not exist
dock_folder "Adobe Creative Suite 6" do
  dock "Mac"
  show_as "list"
  display_as "folder"
  arrangement "name"
  icon "/tmp/adobe.png"
end


# Add icon to dock
dock_application "/Applications/Adobe Photoshop CS6/Adobe Photoshop CS6.app" do
  dock "Mac"
  group "Adobe Creative Suite 6"
  action :add
end

# Add icon to dock
dock_application "/Applications/Adobe Illustrator CS6/Adobe Illustrator.app" do
  dock "Mac"
  group "Adobe Creative Suite 6"
end

#Generate binary plist for dock "Mac" and copy it into place for all users
dock_plist "/tmp/com.apple.dock.plist" do
  dock "Mac"
  restart true
#  all_users true
end
# 
