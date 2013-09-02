#
# Cookbook Name:: eclipse
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install app, which copies directory to /Applications
dmg_package "Eclipse IDE" do
  app "Eclipse"
  volumes_dir "Eclipse"
  dmg_name "eclipse-standard-kepler-R-macosx-cocoa-x86_64"
  source "http://ims-chef.wesleyan.edu/os_x/eclipse/eclipse-standard-kepler-R-macosx-cocoa-x86_64.dmg"
  checksum "f27d5499591d2fdcfe86ba05d03c59078660a1c8e349310ecc06d0aa15c440ef"
  action :install
  type "dir"
  package_id "org.eclipse.sdk"
  version "4.3.0"
end

cookbook_file "/Applications/Eclipse/Eclipse.app/Contents/MacOS/eclipse.ini" do
  mode 0666
end

# Create dock folder, if it does not exist
dock_add "Natural Sciences and Mathematics" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add icon to dock
dock_add "/Applications/Eclipse/Eclipse.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end
