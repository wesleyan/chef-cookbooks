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
  dmg_name "vuescan-x64-9.2.20"
  source "http://ims-chef.wesleyan.edu/os_x/hamrick_vuescan/vuescan-x64-9.2.20.dmg"
  checksum "3356fd525514fce980897038b5f85a8241166be37a7330b5b21c3f6013e399e0"
  action :install
  type "app"
  package_id "com.hamrick.vuescan"
  version "9.2.20"
end

# Inserts VueScan license file
cookbook_file "/Users/Shared/.vuescanrc" do
	owner "root"
	group "wheel"
	mode 00644
end

