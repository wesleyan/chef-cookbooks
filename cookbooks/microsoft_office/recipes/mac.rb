#
# Cookbook Name:: office
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute

# Install Office base
dmg_package "ms_office_2011-14.2.5" do
  app "ms_office_2011-14.2.5"
  volumes_dir "ms_office_2011-14.2.5"
  dmg_name "ms_office_2011-14.2.5"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/microsoft_office_2011/ms_office_2011-14.2.5.dmg"
  checksum "0a83e1ed5113aa3c721c48d74b33e5979b59c0b2c15b141be9389ba3a6e5fc79"
  action :install
  type "mpkg"
  package_id ""
end

# Install customized plist files to surpress first-run dialogues

# Download icon
cookbook_file "/tmp/office.png"

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

