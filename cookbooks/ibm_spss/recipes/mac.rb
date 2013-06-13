#
# Cookbook Name:: ibm_spss
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

# Install custom package via commandline
dmg_package "SPSS Statistics 21" do
  app "SPSS Statistics"
  volumes_dir "SPSS Statistics"
  dmg_name "spss_statistics-21"
  source "http://ims-chef.wesleyan.edu/os_x/ibm_spss/spss_statistics-21.dmg"
  checksum "9554ac2229b06861e5b3e39f09884181c4687c6a0f6ffcb46c557b6db343dab7"
  action :install
  type "pkg"
  package_id "com.ibm.spss.statistics"
  version "21.0.0"
end

cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.ibm.spss.plist"
cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.ibm.spss-cf.plist"

# Create dock folder, if it does not exist
dock_add "Social Sciences" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add icon to dock
dock_add "/Applications/LabStats/LabStatsUserSpace.app" do
  all_users true
  group "Social Sciences"
end
