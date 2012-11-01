#
# Cookbook Name:: office
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute

# Install Office base
dmg_package "Office2011" do
  app "Office Installer"
  volumes_dir "Microsoft Office 2011"
  dmg_name "Office2011"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/microsoft_office-2011/Office2011.dmg"
  checksum "e220451584db851492d5dcb5b4ea91c861e38c322ead57aa58c03bddec53a4e2"
  action :install
  type "mpkg"
  package_id "com.microsoft.office.en.core.pkg.14.0.0"
end

# Install Office updates
dmg_package "Service Pack 1 Update" do
  app "Office 2011 14.1.0 Update"
  volumes_dir "Microsoft Office 2011 14.1.0 Update"
  dmg_name "Office2011-1410UpdateEN"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/microsoft_office-2011/Office2011-1410UpdateEN.dmg"
  checksum "875d6f4e3c406fffa3d479ee567a86ef02827ba7a64aaa4299ad9d3961868b64"
  action :install
  type "mpkg"
  package_id "com.microsoft.office.en.core_resources.pkg.14.1.0.update"
end

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
  restart true
end

