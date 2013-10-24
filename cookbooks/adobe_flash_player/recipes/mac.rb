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
  app "Install Adobe Flash Player"
  volumes_dir "Flash Player"
  dmg_name "adobe_flash_player-11.9.900.117"
  source "http://ims-chef.wesleyan.edu/os_x/adobe_flash_player/adobe_flash_player-11.9.900.117.dmg"
  checksum "92e1885970522da6b9fd67b60aa55406c1e3f0eae20ed0550614d02e0fa671be"
  action :install
  type "pkg"
  package_id "com.adobe.pkg.FlashPlayer"
  version "11.9.900117"
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