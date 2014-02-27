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
  dmg_name "compressor-4.1.dmg"
  source "http://ims-chef.wesleyan.edu/os_x/apple_compressor/compressor-4.1.dmg"
  checksum "5ad11d4dae636a870a36866fb2ec0172611d35e481f7bf76071ff2a89d2f50b0"
  action :install
  type "app"
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