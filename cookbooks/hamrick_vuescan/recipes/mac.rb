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
  dmg_name "vuescan-x64-9.2.13"
  source "http://ims-chef.wesleyan.edu/os_x/hamrick_vuescan/vuescan-x64-9.2.13.dmg"
  checksum "ca0f026072d49c234272469e0fe525a362ddd29d890f8005c29d5dc96cb5c080"
  action :install
  type "app"
  package_id "com.hamrick.vuescan"
  version "9.2.13"
end

# Inserts VueScan license file
cookbook_file "/Users/Shared/.vuescanrc" do
	owner "root"
	group "wheel"
	mode 00644
end

