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
  volumes_dir "RStudio-0.98.507"
  dmg_name "RStudio-0.98.507"
  source "http://sw.wesleyan.edu/os_x/rstudio/RStudio-0.98.507.dmg"
  checksum "7df8e8791958903c6073f6269bb8ba24b763ab9ecae3ff6167723aa422f85777"
  action :install
  type "app"
  package_id "com.rstudio.rstudio.ide"
  version "0.98.507"
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
