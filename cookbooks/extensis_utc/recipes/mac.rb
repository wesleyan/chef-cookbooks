#
# Cookbook Name:: extensis_utc
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install client package
dmg_package "Universal Type Client" do
  app "Universal Type Client"
  volumes_dir "Universal Type Client"
  dmg_name "universal_type_client-3.3.1"
  source "http://ims-chef.wesleyan.edu/os_x/extensis_utc/universal_type_client-3.3.1.dmg"
  checksum "831659220543958f27470e8805f1605760d64dfd9ed23f2bfc6bd102e9309164"
  action :install
  type "pkg"
  package_id "com.extensis.UniversalTypeClient.universalTypeClient33.UniversalTypeClient.pkg"
  version "3.3.1"
end

cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.extensis.UniversalTypeClient.plist" do
  mode 0666
end