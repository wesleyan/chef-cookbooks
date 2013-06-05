#
# Cookbook Name:: adobe_photoshop_cs6
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install base package
dmg_package "Adobe Photoshop CS6" do
  app "adobe_photoshop_cs6_Install"
  volumes_dir "adobe_photoshop_cs6"
  dmg_name "adobe_photoshop_cs6-13.0.4"
  source "http://ims-chef.wesleyan.edu/os_x/adobe_photoshop_cs6/adobe_photoshop_cs6-13.0.4.dmg"
  checksum "134be16b8134a2a91276e1f89568e274b36a92e705a4753ce45603237b6e170b"
  action :install
  type "pkg"
  package_id "com.adobe.Enterprise.install.F6603D67-C55B-41CD-B95F-2D05F01D929C"
end

# Install package update
dmg_package "Adobe Photoshop CS6 Update" do
 app "adobe_photoshop_cs6-13.0.5"
 volumes_dir "adobe_photoshop_cs6-13.0.5"
 dmg_name "adobe_photoshop_cs6-13.0.5"
 source "http://ims-chef.wesleyan.edu/os_x/adobe_photoshop_cs6/adobe_photoshop_cs6-13.0.5.dmg"
 checksum "c4c705a83e732906c4ce0b4aa9b4335035efe6ba4ca77bc771791e48017916c3"
 action :install
 type "pkg"
 #package_id "com.adobe.Enterprise.install.Photoshop-13-0-5"
end

# Install RAW camera update
dmg_package "Adobe Camera RAW update" do
 app "Adobe DNG Converter"
 volumes_dir "DNGConverter_7_4"
 dmg_name "DNGConverter_7_4"
 source "http://ims-chef.wesleyan.edu/os_x/adobe_photoshop_cs6/DNGConverter_7_4.dmg"
 checksum "89e66b32e0485c4745b360cddc7e51b0da22e98ae9d21035e67f818a6c792a6e"
 action :install
 type "app"
 #package_id ""
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
dock_add "/Applications/Adobe Photoshop CS6/Adobe Photoshop CS6.app" do
  all_users true
  group "Adobe Creative Suite 6"
#  restart true
end
