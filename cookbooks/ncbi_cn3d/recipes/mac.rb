#
# Cookbook Name:: ncbi_cn3d
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package 'Cn3D' do
  app 'Cn3D'
  volumes_dir 'Cn3D'
  dmg_name 'Cn3D-4.3.1-OSX'
  source 'http://ims-chef.wesleyan.edu/os_x/ncbi_cn3d/Cn3D-4.3.1-OSX.dmg'
  checksum '1e1a97ddb374302061e3bcfccfefdaeec3071b87cae485f8d5d45e83eda97a1e'
  action :install
  type 'app'
end

# Create dock folder, if it does not exist
dock_add 'Natural Sciences and Mathematics' do
  all_users true
  action :folder_create
  show_as 'list'
  display_as 'folder'
  arrangement 'name'
end

# Add icon to dock
dock_add '/Applications/Cn3D.app' do
  all_users true
  group 'Natural Sciences and Mathematics'
end
