#
# Cookbook Name:: statacorp_stata
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install Stata
dmg_package "Stata" do
  app "Stata 13"
  volumes_dir "Stata 13"
  dmg_name "stata-13.0-20130812"
  source "http://ims-chef.wesleyan.edu/os_x/statacorp_stata/stata-13.0-20130812.dmg"
  checksum "be242e0da9481cdcc1f569b056a4471b8e3a0c49846668453e507e6310cef1a0"
  action :install
  type "pkg"
  package_id "com.statacorp.stata"
  version "13.0.0"
end

cookbook_file "Stata Skip First Run" do
  backup false
  mode 0600
  path "/System/Library/User Template/English.lproj/Library/Preferences/com.stata.stata12.plist"
  source "com.stata.stata13.plist"
  action :create_if_missing
end

execute "Update Stata" do
  command "/Applications/Stata/Stata.app/Contents/MacOS/Stata -q -e \"update all\""
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
dock_add "/Applications/Stata/Stata.app" do
  all_users true
  group "Social Sciences"
end
