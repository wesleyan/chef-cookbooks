#
# Cookbook Name:: flash
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Need to figure out .app as an installer
#
# dmg_package "install_flash_player_osx.dmg" do
#   app "Install Adobe Flash Player"
#   volumes_dir "Flash Player"
#   dmg_name "install_flash_player_osx"
#   source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/adobe_flash_player-11/install_flash_player_osx.dmg"
#   checksum "85111326774f9b8de2c45e54d30cec1885520830ed5f55adff769db7bc6d0e26"
#   action :install
#   type "app"
#   package_id ""
# end

package_id = "com.adobe.pkg.FlashPlayer"


unless system("pkgutil --pkgs=#{package_id}")
  
ruby_block "login window" do
  block do
    login_window_pid = `ps axwww | grep loginwindow`
    puts login_window_pid.split(' ')[0]
  end
end
  
  
remote_file "/tmp/install_flash_player_osx.dmg" do
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/adobe_flash_player-11/install_flash_player_osx.dmg"
  user "root"
  group "wheel"
end

ruby_block "attach" do
  block do
    system "hdiutil attach '/tmp/install_flash_player_osx.dmg'"
  end
end

execute "install flash from mounted dmg" do
  command "launchctl bsexec ${process_id} '/Volumes/Flash Player/Install Adobe Flash Player.app/Contents/MacOS/Adobe Flash Player Install Manager' -install"
  user "root"
end

execute "hdiutil detach '/Volumes/Flash Player'"

end




