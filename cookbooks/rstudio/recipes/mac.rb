#
# Cookbook Name:: rstudio
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "RStudio" do
  app "RStudio"
  volumes_dir "RStudio-0.97.551"
  dmg_name "RStudio-0.97.551"
  source "http://ims-chef.wesleyan.edu/os_x/rstudio/RStudio-0.97.551.dmg"
  checksum "ec34c96f1427a8d2b6452a0ad53741931b9bc4ec5cf6b61bc294da5c178610cc"
  action :install
  type "app"
  package_id "com.rstudio.rstudio.ide"
  version "0.97.551"
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
