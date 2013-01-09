#
# Cookbook Name:: indesign
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "adobe_indesign_cs6-8.0.1.dmg" do
  app "adobe_indesign_cs6-8.0.1_Install"
  volumes_dir "adobe_indesign_cs6-8.0.1"
  dmg_name "adobe_indesign_cs6-8.0.1"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/adobe_indesign_cs6/adobe_indesign_cs6-8.0.1.dmg"
  checksum "59a7664c33fd3b4ec6ecefdbbdecc099fc35fa89be3471820b883ac90b6b4419"
  action :install
  type "pkg"
  package_id "com.adobe.Enterprise.install.E5E7BB07-9B18-46F3-B829-E516CD1F9061"
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
