#
# Cookbook Name:: adobe_photoshop_cs6
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "Adobe Photoshop CS6" do
  app "adobe_photoshop_cs6_Install"
  volumes_dir "adobe_photoshop_cs6"
  dmg_name "adobe_photoshop_cs6-13.0.4"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/adobe_photoshop_cs6/adobe_photoshop_cs6-13.0.4.dmg"
  checksum "134be16b8134a2a91276e1f89568e274b36a92e705a4753ce45603237b6e170b"
  action :install
  type "pkg"
  package_id "com.adobe.Enterprise.install.F6603D67-C55B-41CD-B95F-2D05F01D929C"
end

# Install update
#dmg_package "adobe_photoshop_cs6-13.0.4-update.dmg" do
#  app "adobe_photoshop_cs6-13.0.4_Update"
#  volumes_dir "adobe_photoshop_cs6-13.0.4-update"
#  dmg_name "adobe_photoshop_cs6-13.0.4-update"
#  source "http://baratheon.class.wesleyan.edu/os_x-10.8/adobe_photoshop_cs6/adobe_photoshop_cs6-13.0.4-update.dmg"
#  checksum "d00ae8a2ef6deebad0e13943d6f5ae0c6c93ab561db4471603fd601bf391e791"
#  action :install
#  type "pkg"
#  package_id "com.adobe.Enterprise.install.3AF43FC0-7F50-46E3-A912-54BD0A5E09E91"
#end

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
dock_add "/Applications/Adobe Photoshop CS6/Adobe Photoshop CS6.app" do
  all_users true
  group "Adobe Creative Suite 6"
#  restart true
end
