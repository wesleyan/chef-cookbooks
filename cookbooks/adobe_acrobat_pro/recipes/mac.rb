#
# Cookbook Name:: adobe_acrobat_pro_xi
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install base package
dmg_package "Adobe Acrobat Pro" do
  app "adobe_acrobat_pro_xi-11.0"
  volumes_dir "adobe_acrobat_pro_xi-11.0"
  dmg_name "adobe_acrobat_pro_xi-11.0"
  source "http://ims-chef.wesleyan.edu/os_x/adobe_acrobat_pro_xi/adobe_acrobat_pro_xi-11.0.dmg"
  checksum "ad64d83138a3c9ad74b41617f5a3b3e55470f3115806768576ebcc07c94e8822"
  action :install
  type "pkg"
  package_id "com.adobe.acrobat.11.viewer.app.pkg.MUI"
end

# Install latest point release update
dmg_package "Adobe Acrobat Update" do
  app "AcrobatUpd11004"
  volumes_dir "AcrobatUpd11004"
  dmg_name "AcrobatUpd11004"
  source "http://ims-chef.wesleyan.edu/os_x/adobe_acrobat_pro_xi/AcrobatUpd11004.dmg"
  checksum "105ebf3ac9056b53c35b2cfae162742167fd7dd2b3590cb6f7190710f38982b8"
  action :install
  type "pkg"
  package_id "com.adobe.acrobat.a11.AcrobatUpd11004"
end

# Download icon
cookbook_file "/tmp/adobe.png"

dock_add "Adobe Creative Suite 6" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
  icon "/tmp/adobe.png"
end

# Add to dock
dock_add "/Applications/Adobe Acrobat XI Pro/Adobe Acrobat Pro.app" do
  all_users true
  group "Adobe Creative Suite 6"
  restart true
end

# Keep Preview as the default viewer for PDFs
launch_association_set_file_handler "com.adobe.pdf" do
  bundle_id "com.apple.Preview"
  all_users true
end
