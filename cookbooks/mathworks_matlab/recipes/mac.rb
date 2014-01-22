#
# Cookbook Name:: mathworks_matlab
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Remove MATLAB 2013a if it's installed
directory "/Applications/MATLAB_R2013a" do
  recursive true
  action :delete
end

# Install our .app, built with the MATLAB installer.
dmg_package "MathWorks MATLAB" do
  app "MATLAB_R2013b"
  volumes_dir "MATLAB"
  dmg_name "MATLAB-2013b"
  source "http://ims-chef.wesleyan.edu/os_x/mathworks_matlab/MATLAB-2013b.dmg"
  checksum "04010c7aa7d6f0308347e631acf0c6df049d4d17c21689c2ed83beb9e2fe4f86"
  action :install
  type "app"
  package_id "com.mathworks.matlab"
  version "2013.2.0"
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
dock_add "/Applications/MATLAB_R2013b.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end