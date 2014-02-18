#
# Cookbook Name:: autodesk_autocad
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "autocad-2012SP3.dmg" do
  app "autocad-2012SP3"
  volumes_dir "autocad-2012SP3"
  dmg_name "autocad-2012SP3"
  source "http://ims-chef.wesleyan.edu/os_x/autodesk_autocad/autocad-2012SP3.dmg"
  checksum "dca9c9d54da90348d21f7ba754efcc0fca6b9411d014b4cb1473669550ab3a71"
  action :install
  type "pkg"
  package_id "com.autodesk.main.pkg"
end

# Create dock folder, if it does not exist
dock_add "Center for the Arts" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add to dock
dock_add "/Applications/Autodesk/AutoCAD 2012/AutoCAD.app" do
  all_users true
  group "Center for the Arts"
end

cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.autodesk.AutoCAD.plist"
cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.autodesk.AutoCAD.R18.2.ACAD-A032.409.plist"

# Insert license file
#cookbook_file "/Applications/Autodesk/AutoCAD 2012/AutoCAD.app/Contents/licpath.lic"