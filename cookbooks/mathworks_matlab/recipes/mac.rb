#
# Cookbook Name:: mathworks_matlab
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our .app, built with the MATLAB installer.
dmg_package "MathWorks MATLAB" do
  app "MATLAB_R2013a"
  volumes_dir "MATLAB"
  dmg_name "MATLAB-2013a"
  source "http://ims-chef.wesleyan.edu/os_x/mathworks_matlab/MATLAB-2013a.dmg"
  checksum "37d8aca8a30619f09b66bcd1d6d4a925388c74b8a06287045e76ba84ca116e70"
  action :install
  type "app"
  package_id "com.mathworks.matlab"
  version "2013.1"
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
dock_add "/Applications/MATLAB_R2013a.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end