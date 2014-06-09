#
# Cookbook Name:: vernier_logger_pro
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our pkg.
dmg_package "Vernier Logger Pro" do
  app "Install Logger Pro"
  volumes_dir "LoggerPro3"
  dmg_name "logger_pro-3.8.6.2"
  source "http://sw.wesleyan.edu/os_x/vernier_logger_pro/logger_pro-3.8.6.2.dmg"
  checksum "6a665250fdc7978ad5d49c486371f143fa3e1759d3d31edbd1d196d2622f958c"
  action :install
  type "pkg"
  package_id "com.vernier.installer.NewFull"
  version "3.8.62"
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
