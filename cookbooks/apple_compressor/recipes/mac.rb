#
# Cookbook Name:: compressor
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "Apple Compressor" do
  app "Compressor"
  volumes_dir "Compressor"
  dmg_name "compressor-4.1.1.dmg"
  source "http://sw.wesleyan.edu/os_x/apple_compressor/compressor-4.1.1.dmg"
  checksum "92869e46204496e3a626c5010bd4471f766b9020a16b18174cf5197238843587"
  action :install
  type "pkg"
  package_id "com.apple.pkg.Compressor_AppStore"
  version "4.1.1"
end

# Create dock folder, if it does not exist
dock_add "Center for the Arts" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add to dock
dock_add "/Applications/Compressor.app" do
  all_users true
  group "Center for the Arts"
end