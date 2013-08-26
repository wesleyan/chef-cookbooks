#
# Cookbook Name:: vernier_logger_pro
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our base pkg.
dmg_package "Vernier Logger Pro Full" do
  app "Install Logger Pro"
  volumes_dir "LoggerPro3"
  dmg_name "LoggerPro3"
  source "http://ims-chef.wesleyan.edu/os_x/vernier_logger_pro/LoggerPro3.dmg"
  checksum "dd1a81768bbd1db95d006b9294b6beebf855b6d8048709c3b746c1f6ca7c73e3"
  action :install
  type "mpkg"
  package_id "com.vernier.installer.NewFull"
  version "3.6.0"
end

# Install our update pkg.
dmg_package "Vernier Logger Pro Update" do
  app "Update Logger Pro 3"
  volumes_dir "LoggerPro3Update"
  dmg_name "LoggerPro3_8_6_1_Update"
  source "http://ims-chef.wesleyan.edu/os_x/vernier_logger_pro/LoggerPro3_8_6_1_Update.dmg"
  checksum "dd1a81768bbd1db95d006b9294b6beebf855b6d8048709c3b746c1f6ca7c73e3"
  action :install
  type "pkg"
  package_id "com.vernier.installer.lpapp"
  version "3.8.61"
end

# Create dock folder, if it does not exist
dock_add "Natural Sciences and Mathematics" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add icon to dock
dock_add "/Applications/Logger Pro 3/Logger Pro.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end
