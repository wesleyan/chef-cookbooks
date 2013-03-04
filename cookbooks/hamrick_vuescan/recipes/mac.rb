#
# Cookbook Name:: hamrick_vuescan
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Installs VueScan from DMG
dmg_package "Hamrick VueScan" do
  app "VueScan"
  volumes_dir "VueScan"
  dmg_name "vuescan-x64-9.2.08"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/hamrick_vuescan/vuescan-x64-9.2.08.dmg"
  checksum "f48b2bbff4f99205330791ef1b9bb081a703b852e7eeb47ec48ffa588fe57d55"
  action :install
  type "app"
  package_id "com.hamrick.vuescan"
  version "9.2.08"
end

# Inserts VueScan license file
cookbook_file "/Users/Shared/.vuescanrc" do
	owner "root"
	group "wheel"
	mode 00644
end

