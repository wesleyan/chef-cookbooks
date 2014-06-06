#
# Cookbook Name:: adobe_acrobat_pro_xi
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install base package
dmg_package "Adobe Acrobat Pro" do
  app "adobe_acrobat_pro_xi-11.0"
  volumes_dir "adobe_acrobat_pro_xi-11.0"
  dmg_name "adobe_acrobat_pro_xi-11.0"
  source "http://sw.wesleyan.edu/os_x/adobe_acrobat_pro_xi/adobe_acrobat_pro_xi-11.0.dmg"
  checksum "9dc74ec4dc7fe8724d9f8db12413c54f54a9a17840b52e7af15212c8aaf3ffb3"
  action :install
  type "pkg"
  package_id "com.adobe.acrobat.11.viewer.app.pkg.MUI"
end

# Install latest point release update
dmg_package "Adobe Acrobat Update" do
  app "AcrobatUpd11007"
  volumes_dir "AcrobatUpd11007"
  dmg_name "AcrobatUpd11007"
  source "http://sw.wesleyan.edu/os_x/adobe_acrobat_pro_xi/AcrobatUpd11007.dmg"
  checksum "8885e6eb5ba95e0c0d45c5ca3b7b8a6b654c5f12ed940b60416824534ca61e84"
  action :install
  type "pkg"
  package_id "com.adobe.acrobat.viewer.11.0.07.patch.pkg"
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
