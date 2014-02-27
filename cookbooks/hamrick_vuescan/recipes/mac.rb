#
# Cookbook Name:: hamrick_vuescan
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Installs VueScan from DMG
dmg_package "Hamrick VueScan" do
  app "VueScan"
  volumes_dir "VueScan"
  dmg_name "vuescan-x64-9.4.24"
  source "http://ims-chef.wesleyan.edu/os_x/hamrick_vuescan/vuescan-x64-9.4.24.dmg"
  checksum "fe683d00d095cf6b2c40b36a7dafe080d927e2bc526f4c61b1bccedc7aa51588"
  action :install
  type "app"
  package_id "com.hamrick.vuescan"
  version "9.4.24"
end

# Inserts VueScan license file
cookbook_file "/Users/Shared/.vuescanrc" do
	owner "root"
	group "wheel"
	mode 00644
end

