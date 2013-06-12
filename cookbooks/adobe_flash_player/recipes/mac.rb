#
# Cookbook Name:: adobe_flash_player
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our Composer-built package.
dmg_package "Adobe Flash Player" do
  app "Install Adobe Flash Player"
  volumes_dir "Flash Player"
  dmg_name "flash_player-11.7.700.203.dmg"
  source "http://ims-chef.wesleyan.edu/os_x/adobe_flash_player/flash_player-11.7.700.203.dmg"
  checksum "5c592e8fba24cf02cf1ad8735007352f376dfbfb0adbad7d11961689602844f5"
  action :install
  type "app"
  package_id "com.adobe.pkg.FlashPlayer"
  version "11.7.700.203"
end

# Seed file that disables automatic updates.
cookbook_file "/Library/Application Support/Macromedia/mms.cfg" do
  mode 0644
end