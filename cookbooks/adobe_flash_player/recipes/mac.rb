#
# Cookbook Name:: adobe_flash_player
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our package, extracted from Adobe's custom installer .app.
dmg_package "Adobe Flash Player" do
  app "AdobeFlashPlayer"
  volumes_dir "AdobeFlashPlayer"
  dmg_name "adobe_flash_player-12.0.0.4"
  source "http://ims-chef.wesleyan.edu/os_x/adobe_flash_player/adobe_flash_player-12.0.0.4.dmg"
  checksum "3dc57ac8a66a6eda285d82e45d0083bf5240f2db2e852b64e465cfc663993822"
  action :install
  type "pkg"
  package_id "com.adobe.pkg.FlashPlayer"
  version "12.0.04"
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