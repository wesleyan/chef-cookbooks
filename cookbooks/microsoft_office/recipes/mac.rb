#
# Cookbook Name:: office
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute

# Install Office base
dmg_package "Microsoft Office 2011 SP3" do
  app "Microsoft Office 2011"
  volumes_dir "Microsoft Office 2011"
  dmg_name "microsoft_office_2011-14.3.2"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/microsoft_office_2011/microsoft_office_2011-14.3.2.dmg"
  checksum "d546e0e4cbb5bc37fbdc9ba904d7df8a08d69a2afb7323fef752d83fd4a36f05"
  action :install
  type "pkg"
  package_id "com.microsoft.office.2011"
  version "14.3.2"
end

# Install customized plist files to surpress first-run dialogues
#
# SOMEONE NEEDS TO WRITE THIS

# Download icon
cookbook_file "/tmp/office.png"
cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.microsoft.autoupdate2.plist"
cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.microsoft.error_reporting.plist"
cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.microsoft.office.plist"
cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.microsoft.office.setupassistant.plist"


# Create dock folder
dock_add "Microsoft Office 2011" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
  icon "/tmp/office.png"
end

# Add applications to dock
dock_add "/Applications/Microsoft Office 2011/Microsoft Excel.app" do
  all_users true
  group "Microsoft Office 2011"
end

dock_add "/Applications/Microsoft Office 2011/Microsoft PowerPoint.app" do
  all_users true
  group "Microsoft Office 2011"
end

dock_add "/Applications/Microsoft Office 2011/Microsoft Word.app" do
  all_users true
  group "Microsoft Office 2011"
#  restart true
end

