#
# Cookbook Name:: sissa_psyscopex
# Recipe:: mac
#
# Copyright 2014, Wesleyan
#
# All rights reserved - Do Not Redistribute
#
# Install our .app
dmg_package "SISSA PsyScope X" do
	app "PsyScope X"
	volumes_dir "PsyScope X"
	dmg_name "psyscope_x-b77"
	source "http://sw.wesleyan.edu/os_x/sissa_psyscopex/psyscope_x-b77.dmg"
	checksum "943a04b57180f46947cd32ba43a95e086c8bce0276c0318f2d1af7fb0445331a"
	action :install
	type "app"
	package_id "it.sissa.psyscopex"
	version "0.77.0"
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
dock_add "/Applications/PsyScope X.app" do
  all_users true
  group "Social Sciences"
end
