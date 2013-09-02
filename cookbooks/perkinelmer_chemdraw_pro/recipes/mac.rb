#
# Cookbook Name:: perkinelmer_chemdraw_pro
# Recipe:: default
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
#
# Remove ChemDraw 12.x if it's installed:
directory "/Library/Internet Plug-Ins/CS ChemDraw Pro.plugin" do
  recursive true
  action :delete
end

directory "/Applications/CS ChemOffice 2010" do
  recursive	true
  action :delete
end

# Install 13.x
dmg_package "ChemDraw Pro" do
  app "ChemDraw 13.0"
  volumes_dir "ChemDraw 13.0"	
  dmg_name "chemdraw_pro-13.0.2"
  source "http://ims-chef.wesleyan.edu/os_x/perkinelmer_chemdraw_pro/chemdraw_pro-13.0.2.dmg"
  checksum "e3368f8959ddad502f986619240c7a39662832eb396e279308ba61d51bda1b0f"
  action :install
  unmount false
  type "app"
  package_id "com.cambridgesoft.chemdraw.pro"
  version "13.0.2"
end

# Install web plugin
dmg_package "ChemDraw Pro Web Plug-in" do
  app "ChemDraw Plugin Pro.plugin"
  volumes_dir "ChemDraw 13.0"
  dmg_name "chemdraw_pro-13.0.2"
  source "http://ims-chef.wesleyan.edu/os_x/perkinelmer_chemdraw_pro/chemdraw_pro-13.0.2.dmg"
  checksum "e3368f8959ddad502f986619240c7a39662832eb396e279308ba61d51bda1b0f"
  action :install
  destination "/Library/Internet Plug-Ins/"
  type "dir"
  unmount true
  package_id "com.cambridgesoft.chemdraw.pro.plugin"
  version "13.0.2"
end

# Insert license file in default user template directory
cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.cambridgesoft.plist"

# Create dock folder, if it does not exist
dock_add "Natural Sciences and Mathematics" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add icon to dock
dock_add "/Applications/ChemDraw 13.0.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end