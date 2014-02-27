#
# Cookbook Name:: sas_institute_jmp
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our package.
dmg_package "SAS JMP" do
  app "JMP 11"
  volumes_dir "JMP-11-Installer"
  dmg_name "JMP-11"
  source "http://ims-chef.wesleyan.edu/os_x/sas_institute_jmp/JMP-11.dmg"
  checksum "42ead4e59105e3572c5c3ecf4bf584c099eb861411480b3cf04fdf92a5e975dd"
  action :install
  type "pkg"
  package_id "com.sas.pkg.JMP11AnnualLicense32"
end

# Insert JMP license file within the .app container.
cookbook_file "osxJMP.per" do
  path "/Applications/JMP 11.app/Contents/Resources/JMP.per"
  backup false
  mode 0644
end

# Copy JMP preferences to default user profile
cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.sas.jmp.plist" do
  mode 0600
end

# Create directory in default user profile for weird JMP file needed to suppress registration nag.
directory "/System/Library/User Template/English.lproj/Library/Application Support/JMP/11/" do
  mode 00755
  action :create
  recursive true
end

# Copy weird JMP file needed to suppress registration nag.
cookbook_file "/System/Library/User Template/English.lproj/Library/Application Support/JMP/11/License.plist" do
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
dock_add "/Applications/JMP 11.app" do
  all_users true
  group "Social Sciences"
end

