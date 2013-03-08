#
# Cookbook Name:: psyscope
# Recipe:: default
#
# Copyright 2013, Wesleyan
#
# All rights reserved - Do Not Redistribute
#

dmg_package "Psyscope" do
	app "Psyscope X"
	volumes_dir "Psyscope X"
	dmg_name "psyscope_10.57"
	source "http://baratheon.class.wesleyan.edu/os_x-10.8/psyscope/psyscope_10.57.dmg"
	checksum "aff71a5985c96990233a477567a718ffc887d2343e765f47b4ae88999c94e789"
	action :install
	type "app"
	package_id "com.psyscope"
	version "10.57"
end