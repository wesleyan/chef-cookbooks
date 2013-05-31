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
  app "Adobe Flash"
  volumes_dir "Adobe Flash"
  dmg_name "adobe_flash_player-11.7.700.202"
  source "http://ims-chef.wesleyan.edu/os_x/adobe_flash_player/adobe_flash_player-11.7.700.202.dmg"
  checksum "846b4ca391ef9eacf4a7a19b9ad7d528e50293ee8d82d93d89242409188487f7"
  action :install
  type "pkg"
  package_id "com.adobe.pkg.FlashPlayer"
  version "11.7.700202"
end

# Seed file that disables automatic updates.
cookbook_file "/Library/Application Support/Macromedia/mms.cfg" do
  mode 0644
end