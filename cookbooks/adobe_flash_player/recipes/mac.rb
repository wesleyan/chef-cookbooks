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
  dmg_name "adobe_flash_player-13.0.0.206"
  source "http://ims-chef.wesleyan.edu/os_x/adobe_flash_player/adobe_flash_player-13.0.0.206.dmg"
  checksum "53992cc4b8e076ebe7ae49c88cceb6b7178bacefba170a9342ee3cc635a469b4"
  action :install
  type "pkg"
  package_id "com.adobe.pkg.FlashPlayer"
  version "13.0.0206"
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