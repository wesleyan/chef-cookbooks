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
  dmg_name "adobe_flash_player-12.0.0.70"
  source "http://ims-chef.wesleyan.edu/os_x/adobe_flash_player/adobe_flash_player-12.0.0.70.dmg"
  checksum "f99cf64dac684013bbe05297aa7a45a3059d7a27e5b9dc0867ce57e71d465f95"
  action :install
  type "pkg"
  package_id "com.adobe.pkg.FlashPlayer"
  version "12.0.070"
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