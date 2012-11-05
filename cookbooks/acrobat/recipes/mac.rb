#
# Cookbook Name:: acrobat
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "adobe_acrobat_pro_xi-11.0.dmg" do
  app "adobe_acrobat_pro_xi-11.0"
  volumes_dir "adobe_acrobat_pro_xi-11.0"
  dmg_name "adobe_acrobat_pro_xi-11.0"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/adobe_acrobat_pro-xi/adobe_acrobat_pro_xi-11.0.dmg"
  checksum "e941c628f2bb6eb945584041d1f556d7c6d101f5c808e297ae33614a6244dc7a"
  action :install
  type "pkg"
  package_id "com.adobe.acrobat.11.viewer.app.pkg.MUI"
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

dock_add "/Applications/Adobe Acrobat XI Pro/Adobe Acrobat Pro.app" do
  all_users true
  group "Adobe Creative Suite 6"
#  restart true
end
