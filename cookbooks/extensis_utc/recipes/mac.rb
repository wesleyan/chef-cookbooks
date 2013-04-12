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
  dmg_name "universal_type_client-3.3.0"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/extensis_utc/universal_type_client-3.3.0.dmg"
  checksum "7e325f7186de90dde22958a16aceca13f296be53f5aac32a88adf213c57c3fd5"
  action :install
  type "pkg"
  package_id "com.extensis.UniversalTypeClient.universalTypeClient33.UniversalTypeClient.pkg"
end

cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.extensis.UniversalTypeClient.plist" do
  mode 0666
end