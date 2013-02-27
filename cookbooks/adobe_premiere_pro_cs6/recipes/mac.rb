#
# Cookbook Name:: adobe_premiere_pro_cs6
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "Adobe Premiere Pro CS6" do
  app "adobe_premiere_pro_cs6_Install"
  volumes_dir "adobe_premiere_pro_cs6"
  dmg_name "adobe_premiere_pro_cs6-6.0.3"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/adobe_premiere_pro_cs6/adobe_premiere_pro_cs6-6.0.3.dmg"
  checksum "806e8bd3817b4524998f88c00aaf648dbdc6e4e453b22637fb9c5032195e007c"
  action :install
  type "pkg"
  package_id "com.adobe.Enterprise.install.C3BF3D3B-BD3F-4EEE-B978-799647D13F2A"
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
dock_add "/Applications/Adobe Premiere Pro CS6/Adobe Premiere Pro CS6.app" do
  all_users true
  group "Adobe Creative Suite 6"
#  restart true
end
