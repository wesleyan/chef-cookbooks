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
  app "Adobe Flash Player"
  volumes_dir "Adobe Flash Player"
  dmg_name "adobe_flash_player-11.7.700.202"
  source "http://ims-chef.wesleyan.edu/os_x/adobe_flash_player/adobe_flash_player-11.7.700.202.dmg"
  checksum "0861e31cd9110a0dc19ca33aea7cdcff5fc6f53300ad0d333c93bddad3649ff1"
  action :install
  type "pkg"
  package_id "com.adobe.pkg.FlashPlayer"
  version "11.7.700202"
end

# Seed file that disables automatic updates.
cookbook_file "/Library/Application Support/Macromedia/mms.cfg" do
  mode 0644
end