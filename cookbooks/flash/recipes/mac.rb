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
dmg_package "install_flash_player_osx.dmg" do
  app "Install Adobe Flash Player"
  volumes_dir "Flash Player"
  dmg_name "install_flash_player_osx"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/adobe_flash_player-11/install_flash_player_osx.dmg"
  checksum "85111326774f9b8de2c45e54d30cec1885520830ed5f55adff769db7bc6d0e26"
  action :install
  type "app"
  package_id ""
end