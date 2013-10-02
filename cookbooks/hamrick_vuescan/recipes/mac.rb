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
  dmg_name "vuescan-x64-9.3.09"
  source "http://ims-chef.wesleyan.edu/os_x/hamrick_vuescan/vuescan-x64-9.3.09.dmg"
  checksum "f9ae844c929a4fdbb1188b544f11d0da893ea09115b9de089e79c935af2c5ede"
  action :install
  type "app"
  package_id "com.hamrick.vuescan"
  version "9.3.09"
end

# Inserts VueScan license file
cookbook_file "/Users/Shared/.vuescanrc" do
	owner "root"
	group "wheel"
	mode 00644
end

