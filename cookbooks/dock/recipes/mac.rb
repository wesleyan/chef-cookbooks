cookbook_file "/tmp/dockutil.py" do
  source "dockutil.py"
  owner "root"
  group "wheel"
  mode "0700"
end

cookbook_file "/tmp/com.apple.dock.plist" do
  source "com.apple.dock.plist"
  owner "root"
  group "wheel"
  mode "0777"
  action :create
end

execute "convert to binary" do
  command "plutil -convert binary1 -o '/System/Library/User Template/English.lproj/Library/Preferences/com.apple.dock.plist' /tmp/com.apple.dock.plist"
  action :run
end   

execute "add to dock" do
  command "/tmp/dockutil.py --add /Applications/Safari.app --no-restart '/System/Library/User Template/English.lproj'"
  action :run
end

