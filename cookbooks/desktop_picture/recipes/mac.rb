cookbook_file "/tmp/com.apple.desktop.plist" do
  source "com.apple.desktop.plist"
  owner "root"
  group "wheel"
  mode "0777"
  action :create
end

execute "convert to binary" do
  command "plutil -convert binary1 -o '/System/Library/User Template/English.lproj/Library/Preferences/com.apple.desktop.plist' /tmp/com.apple.desktop.plist"
  action :run
end   
