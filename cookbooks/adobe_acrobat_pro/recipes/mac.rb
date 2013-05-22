#
# Cookbook Name:: adobe_acrobat_pro_xi
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install base package
dmg_package "Adobe Acrobate Pro" do
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
  app "AcrobatUpd11003"
  volumes_dir "AcrobatUpd11003"
  dmg_name "AcrobatUpd11003"
  source "http://ims-chef.wesleyan.edu/os_x/adobe_acrobat_pro_xi/AcrobatUpd11003.dmg"
  checksum "e2260e9a30e863b40e3678a698ed2be479a0d8a4051188f0edc53822745e42ca"
  action :install
  type "pkg"
  package_id "com.adobe.acrobat.a11.AcrobatUpd11003"
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
#  restart true
end

# Keep Preview as the default viewer for PDFs
launch_association_set_file_handler "com.adobe.pdf" do
  bundle_id "com.apple.Preview"
  all_users true
end
