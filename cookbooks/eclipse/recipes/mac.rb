#
# Cookbook Name:: eclipse
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install app, which copies directory to /Applications
dmg_package "Eclipse IDE" do
  app "Eclipse"
  volumes_dir "Eclipse"
  dmg_name "eclipse-4.3.2"
  source "http://sw.wesleyan.edu/os_x/eclipse/eclipse-4.3.2.dmg"
  checksum "5dc9b124fc98b884fabc74f60866836ce13742cec5587104dddb365d2895940d"
  action :install
  type "dir"
  package_id "org.eclipse.sdk"
  version "4.3.2"
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
