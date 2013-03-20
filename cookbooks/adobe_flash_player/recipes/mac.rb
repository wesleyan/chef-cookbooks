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
  app "Adobe Flash Player"
  volumes_dir "Adobe Flash Player"
  dmg_name "adobe_flash_player-11.6.602.180"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/adobe_flash_player/adobe_flash_player-11.6.602.180.dmg"
  checksum "edb3cb53f554dddee0a0f92379b73787ab9f69fd3d09ee0ac2a741cee41cbe08"
  action :install
  type "pkg"
  package_id "com.adobe.pkg.FlashPlayer"
  version "11.6.602.180"
end