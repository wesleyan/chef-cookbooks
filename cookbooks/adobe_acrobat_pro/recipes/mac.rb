#
# Cookbook Name:: adobe_acrobat_pro_xi
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install base package
dmg_package "adobe_acrobat_pro_xi-11.0.dmg" do
  app "adobe_acrobat_pro_xi-11.0"
  volumes_dir "adobe_acrobat_pro_xi-11.0"
  dmg_name "adobe_acrobat_pro_xi-11.0"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/adobe_acrobat_pro_xi/adobe_acrobat_pro_xi-11.0.dmg"
  checksum "ad64d83138a3c9ad74b41617f5a3b3e55470f3115806768576ebcc07c94e8822"
  action :install
  type "pkg"
  package_id "com.adobe.acrobat.11.viewer.app.pkg.MUI"
end

# Install first point release update, which is a dependency of all following point releases
dmg_package "AcrobatUpd11001.dmg" do
  app "AcrobatUpd11001"
  volumes_dir "AcrobatUpd11001"
  dmg_name "AcrobatUpd11001"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/adobe_acrobat_pro_xi/AcrobatUpd11001.dmg"
  checksum "dab9ab5f9705ffde175b07205174736cb14c01755ef83ab376691fa34081feda"
  action :install
  type "pkg"
  package_id "com.adobe.acrobat.a11.AcrobatUpd11001"
end

# Install the latest security patch
dmg_package "AcrobatSecUpd11002.dmg" do
  app "AcrobatSecUpd11002"
  volumes_dir "AcrobatSecUpd11002"
  dmg_name "AcrobatSecUpd11002"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/adobe_acrobat_pro_xi/AcrobatSecUpd11002.dmg"
  checksum "88edf1efee233fbd1319b1ded95e766e7a942a2e843d293f248482e40f082077"
  action :install
  type "pkg"
  package_id "com.adobe.acrobat.a11.AcrobatSecUpd11002"
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

# Keep Preview as the default viewer for PDFs
launch_association_set_file_handler "com.adobe.pdf" do
  bundle_id "com.apple.Preview"
  all_users true
end

dock_add "/Applications/Adobe Acrobat XI Pro/Adobe Acrobat Pro.app" do
  all_users true
  group "Adobe Creative Suite 6"
#  restart true
end
