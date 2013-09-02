#
# Cookbook Name:: sas_jmp
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our package.
dmg_package "SAS JMP" do
  app "JMP 10"
  volumes_dir "JMP-10-Installer"
  dmg_name "JMP-10"
  source "http://ims-chef.wesleyan.edu/os_x/sas_jmp/JMP-10.dmg"
  checksum "6847365a6d34b5123dda002961c02490d49b238c8cd511ab2ac18f43550d38f6"
  action :install
  type "pkg"
  package_id "com.sas.pkg.JMP10AnnualLicense32"
end

# Insert JMP license file within the .app container.
cookbook_file "/Applications/JMP 10.app/Contents/Resources/JMP.per" do
  mode 0644
end

# Copy JMP preferences to default user profile
cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.sas.jmp.plist" do
  mode 0600
end

# Create directory in default user profile for weird JMP file needed to suppress registration nag.
directory "/System/Library/User Template/English.lproj/Library/Application Support/JMP/10/" do
  mode 00755
  action :create
  recursive true
end

# Copy weird JMP file needed to suppress registration nag.
cookbook_file "/System/Library/User Template/English.lproj/Library/Application Support/JMP/10/License.plist" do
  mode 0644
end

# Create dock folder, if it does not exist
dock_add "Social Sciences" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add icon to dock
dock_add "/Applications/JMP 10.app" do
  all_users true
  group "Social Sciences"
end

