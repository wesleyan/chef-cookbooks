#
# Cookbook Name:: tug_mactex
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

# Install MacTeX libraries (includes the latest TeXShop for now)
dmg_package "MacTeX" do
  app "MacTeX"
  volumes_dir "MacTeX"
  dmg_name "MacTeX-20130530"
  source "http://ims-chef.wesleyan.edu/os_x/tug_mactex/MacTeX-20130530.dmg"
  checksum "bb263151a6546999bc58e22f3af8a790b422661d64b6882b4e83a56fdaa07e85"
  action :install
  type "pkg"
  package_id "org.tug.mactex.gui"
  version "2013.05.30"
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
dock_add "/Applications/TeX/TeXShop.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end
