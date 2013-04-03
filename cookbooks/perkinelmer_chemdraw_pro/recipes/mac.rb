#
# Cookbook Name:: perkinelmer_chemdraw_pro
# Recipe:: default
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "ChemDraw Pro" do
  app "Install CS ChemDraw Pro"
  volumes_dir "ChemDraw Pro 12.0.3"	
  dmg_name "chemdraw_pro-12.0.3"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/perkinelmer_chemdraw_pro/chemdraw_pro-12.0.3.dmg"
  checksum "bb644e4c1956d5aef3bbce44de8e065912e0ca1c1356546eb23010a97c01c589"
  action :install
  type "mpkg"
  package_id "www.cambridgesoft.com.csChembiodrawPro.CSChemDrawProApp.pkg"
  version "12.0.3"
end

# Create shared user directory
directory "/Users/Shared/Library/Preferences" do
  mode 00666
  owner "root"
  group "wheel"
  action :create
  recursive true
end

# Insert license file in shared user directory
cookbook_file "ChemDraw Pro License" do
  backup false
  path "/Users/Shared/Library/Preferences/com.cambridgesoft.plist"
  source "com.cambridgesoft.plist"
  owner "root"
  group "wheel"
  mode 0666
  action :create
end