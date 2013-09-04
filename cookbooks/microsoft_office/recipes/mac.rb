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
  source "http://ims-chef.wesleyan.edu/os_x/microsoft_office_2011/microsoft_office_2011-14.3.2.dmg"
  checksum "d546e0e4cbb5bc37fbdc9ba904d7df8a08d69a2afb7323fef752d83fd4a36f05"
  action :install
  type "pkg"
  package_id "com.microsoft.office.2011"
  version "14.3.2"
end

#dmg_package "Update Office 2011-1434" do
#  app "Office 2011 14.3.4 Update"
#  volumes_dir "Microsoft Office 2011 14.3.4 Update"
#  dmg_name "Office2011-1434UpdateEN"
#  source "http://ims-chef.wesleyan.edu/os_x/microsoft_office_2011/Office2011-1434UpdateEN.dmg"
#  checksum "892769fcdd91688ff66bddd9c5577e72cdd596420d8bd35f858a7e862f62f773"
#  action :install
#  type "pkg"
#  package_id "com.microsoft.office.2011"
#  version "14.3.4"
#end

#dmg_package "Update Office 2011-1435" do
#  app "Office 2011 14.3.5 Update"
#  volumes_dir "Microsoft Office 2011 14.3.5 Update"
#  dmg_name "Office2011-1435UpdateEN"
#  source "http://ims-chef.wesleyan.edu/os_x/microsoft_office_2011/Office2011-1435UpdateEN.dmg"
#  checksum "6ddf86a7fd4cf3a3a5e0875ef5bc50178e2be0b691426e5eed997712bc9bb60e"
#  action :install
#  type "pkg"
#  package_id "com.microsoft.office.2011"
#  version "14.3.5"
#end

# Install latest update.
dmg_package "Update Office 2011 Update" do
  app "Office 2011 14.3.6 Update"
  volumes_dir "Microsoft Office 2011 14.3.6 Update"
  dmg_name "Office2011-1436Update_EN-US"
  source "http://ims-chef.wesleyan.edu/os_x/microsoft_office_2011/Office2011-1436Update_EN-US.dmg"
  checksum "36dfc8abb3a4fd408d78910b308642482bdeb6035de88de63efdbd9e22e60e01"
  action :install
  type "pkg"
  package_id "com.microsoft.office.2011"
  version "14.3.6"
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

