#
# Cookbook Name:: rstudio
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "RStudio" do
  app "RStudio"
  volumes_dir "RStudio-0.98.501"
  dmg_name "RStudio-0.98.501"
  source "http://ims-chef.wesleyan.edu/os_x/rstudio/RStudio-0.98.501.dmg"
  checksum "26cb3059c9f40d85856c103a3a34331d31a1e099b72c2bbee2319a4e39f82f35"
  action :install
  type "app"
  package_id "com.rstudio.rstudio.ide"
  version "0.98.501"
end

# Create dock folder, if it does not exist
dock_add "Social Sciences" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add icon to dock
dock_add "/Applications/RStudio.app" do
  all_users true
  group "Social Sciences"
end
