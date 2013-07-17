#
# Cookbook Name:: adobe_flash_player
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our package, extracted from Adobe's custom installer .app.
dmg_package "Adobe Flash Player" do
  app "Adobe Flash Player"
  volumes_dir "Adobe Flash Player"
  dmg_name "adobe_flash_player-11.8.800.94"
  source "http://ims-chef.wesleyan.edu/os_x/adobe_flash_player/adobe_flash_player-11.8.800.94.dmg"
  checksum "d16f3ae951731b3d7a3bc900d20818557ef5cb8fe5819c97c3995df3ab08d90"
  action :install
  type "pkg"
  package_id "com.adobe.pkg.FlashPlayer"
  version "11.8.80094"
end

# Create directory for mms.cfg
directory "/Library/Application Support/Macromedia" do
  owner "root"
  group "admin"
  mode 00777
  action :create
end

# Seed file that disables automatic updates.
cookbook_file "/Library/Application Support/Macromedia/mms.cfg" do
  mode 0644
end