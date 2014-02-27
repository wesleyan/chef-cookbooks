#
# Cookbook Name:: ucsf_chimera
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our .app
dmg_package "UCSF Chimera" do
  app "Chimera"
  volumes_dir "ChimeraInstaller"
  dmg_name "chimera-1.8-mac64"
  source "http://ims-chef.wesleyan.edu/os_x/ucsf_chimera/chimera-1.8-mac64.dmg"
  checksum "14e35135abb5bd117b8846eae3cdd907161d3ab77b9bb8995be98938c818e764"
  action :install
  type "app"
  package_id "edu.ucsf.chimera"
  version "1.8.0"
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
dock_add "/Applications/Chimera.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end

