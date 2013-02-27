#
# Cookbook Name:: adobe_indesign_cs6
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "Adobe InDesign CS6" do
  app "adobe_indesign_cs6_Install"
  volumes_dir "adobe_indesign_cs6"
  dmg_name "adobe_indesign_cs6-8.0.1"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/adobe_indesign_cs6/adobe_indesign_cs6-8.0.1.dmg"
  checksum "a470e9390599672332da3a9f82b3f091839963e6ed540f8a6dfbc00aef1a60b4"
  action :install
  type "pkg"
  package_id "com.adobe.Enterprise.install.CD42F8C2-93BE-4C32-9064-C04F00977A73"
end

# Download icon
cookbook_file "/tmp/adobe.png"

# Create dock folder, if it does not exist
dock_add "Adobe Creative Suite 6" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
  icon "/tmp/adobe.png"
end

# Add icon to dock
dock_add "/Applications/Adobe InDesign CS6/Adobe InDesign CS6.app" do
  all_users true
  group "Adobe Creative Suite 6"
#  restart true
end
