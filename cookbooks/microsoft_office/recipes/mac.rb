#
# Cookbook Name:: microsoft_office
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install Office base
dmg_package "Microsoft Office 2011 SP3" do
  app "Microsoft Office 2011"
  volumes_dir "Microsoft Office 2011"
  dmg_name "microsoft_office_2011-14.3.2"
  source "http://ims-chef.wesleyan.edu/os_x/microsoft_office_2011/microsoft_office_2011-14.3.2.dmg"
  checksum "d546e0e4cbb5bc37fbdc9ba904d7df8a08d69a2afb7323fef752d83fd4a36f05"
  action :install
  type "pkg"
  package_id "com.microsoft.office.2011"
  version "14.3.2"
end

# Install latest update.
dmg_package "Update Office 2011" do
  app "Office 2011 14.3.8 Update"
  volumes_dir "Microsoft Office 2011 14.3.8 Update"
  dmg_name "Office2011-1438Update_EN-US"
  source "http://ims-chef.wesleyan.edu/os_x/microsoft_office_2011/Office2011-1438Update_EN-US.dmg"
  checksum "16491be5922a23f3588c567e3a8cceaf13b279358defae8b22923e5edd6f9077"
  action :install
  type "pkg"
  package_id "com.microsoft.office.2011"
  version "14.3.8"
end

# Install customized plist files to surpress first-run dialogues
default_profile "com.microsoft.autoupdate2.plist" do
  path "Library/Preferences"
  cookbook 'microsoft_office'
end
default_profile "com.microsoft.error_reporting.plist" do
  path "Library/Preferences"
  cookbook 'microsoft_office'
end
default_profile "com.microsoft.office.plist" do
  path "Library/Preferences"
  cookbook 'microsoft_office'
end
default_profile "com.microsoft.office.setupassistant.plist" do
  path "Library/Preferences"
  cookbook 'microsoft_office'
end
default_profile "com.microsoft.Excel.plist" do
  path "Library/Preferences"
  cookbook 'microsoft_office'
end
default_profile "com.microsoft.Powerpoint.plist" do
  path "Library/Preferences"
  cookbook 'microsoft_office'
end
default_profile "com.microsoft.Word.plist" do
  path "Library/Preferences"
  cookbook 'microsoft_office'
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
#  restart true
end

