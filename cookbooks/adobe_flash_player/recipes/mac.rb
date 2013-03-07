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
dmg_package "Adobe Flash Player" do
  app "adobe_flash_player-11.6.602.167"
  volumes_dir "adobe_flash_player-11.6.602.167"
  dmg_name "adobe_flash_player-11.6.602.167"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/adobe_flash_player/adobe_flash_player-11.6.602.167.dmg"
  checksum "b35cd6c607d8b194bf6fce43eaeca6f93a17957a2240acf219d0f1255bd98ae1"
  action :install
  type "pkg"
  package_id "adobe_flash_player-11.6.602.167"
  version "11.6.602.167"
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




