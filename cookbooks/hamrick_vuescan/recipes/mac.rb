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
  dmg_name "vuescan-x64-9.2.22"
  source "http://ims-chef.wesleyan.edu/os_x/hamrick_vuescan/vuescan-x64-9.2.22.dmg"
  checksum "f67895e21a5d0f7de66dc9fb6e680a7b6a6d2261e9d78612de4274c254251183"
  action :install
  type "app"
  package_id "com.hamrick.vuescan"
  version "9.2.22"
end

# Inserts VueScan license file
cookbook_file "/Users/Shared/.vuescanrc" do
	owner "root"
	group "wheel"
	mode 00644
end

