#
# Cookbook Name:: ncbi_cn3d
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "Cn3D-4.3-OSX-i386.dmg" do
  app "Cn3D"
  volumes_dir "Cn3D"
  dmg_name "Cn3D-4.3-OSX-i386"
  source "http://ims-chef.wesleyan.edu/os_x/ncbi_cn3d/Cn3D-4.3-OSX-i386.dmg"
  checksum "30fd6694f6dad553c2c5d7611e8906575bd1b93efe20d109cb8eda9f3874e5b5"
  action :install
  type "app"
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
dock_add "/Applications/Cn3D.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end
