#
# Cookbook Name:: xorg_xquartz
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our pkg
dmg_package "XQuartz-2.7.5.dmg" do
  app "XQuartz"
  volumes_dir "XQuartz-2.7.5"
  dmg_name "XQuartz-2.7.5"
  source "http://ims-chef.wesleyan.edu/os_x/xorg_xquartz/XQuartz-2.7.5.dmg"
  checksum "4382ff78cef5630fb6b8cc982da2e5a577d8cc5dddd35a493b50bad2fcf5e34a"
  action :install
  type "pkg"
  package_id "org.macosforge.xquartz.pkg"
  version "2.7.5"
end

# Here we symlink the default X11.app with XQuartz.app
execute "Symlink X11" do
  command "ln -s /Applications/Utilities/XQuartz.app /Applications/Utilities/X11.app"
  not_if { File.exist?("/Applications/Utilities/X11.app") }
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
dock_add "/Applications/Utilities/XQuartz.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end
