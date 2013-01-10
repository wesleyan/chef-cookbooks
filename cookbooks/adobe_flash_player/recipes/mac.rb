#
# Cookbook Name:: adobe_flash_player
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Need to figure out .app as an installer
#
dmg_package "install_flash_player_osx.dmg" do
  app "Install Adobe Flash Player"
  volumes_dir "Flash Player/Install Adobe Flash Player.app/Contents/MacOS"
  dmg_name "install_flash_player_osx"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/adobe_flash_player/install_flash_player_osx.dmg"
  checksum "3b514c4a0956cc2c6a0f5150c16b484117f0883dc7ca73ce7d66541468e54212"
  action :install
  type "custom"
  command "Adobe Flash Player Install Manager' -install"
  package_id "com.adobe.pkg.FlashPlayer"
end

# end

# Adobe's official functionality actually limits the silent installer from running when users are logged out.. commenting out this
# method until we can figure something out
#
#unless system("pkgutil --pkgs=#{package_id}")
#  
#ruby_block "login window" do
#  block do
#    login_window_pid = `ps axwww | grep loginwindow`
#    puts login_window_pid.split(' ')[0]
#  end
#end
#  
#  
#remote_file "/tmp/install_flash_player_osx.dmg" do
#  source "http://baratheon.class.wesleyan.edu/os_x-10.8/adobe_flash_player/install_flash_player_osx.dmg"
#  user "root"
#  group "wheel"
#end
#
#ruby_block "attach" do
#  block do
#    system "hdiutil attach '/tmp/install_flash_player_osx.dmg'"
#  end
#end

#execute "install flash from mounted dmg" do
#  command "launchctl bsexec ${process_id} '/Volumes/Flash Player/Install Adobe Flash Player.app/Contents/MacOS/Adobe Flash Player Install Manager' -install"
#  user "root"
#end

#execute "hdiutil detach '/Volumes/Flash Player'"
#
#end




