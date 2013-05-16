#
# Cookbook Name:: apple_airport
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "Apple AirPort Utility" do
  app "AirPortUtility"
  volumes_dir "AirPortUtility"
  dmg_name "AirPortUtility6.2"
  source "http://ims-chef.wesleyan.edu/os_x/apple_airport/AirPortUtility6.2.dmg"
  checksum "eaaf25a022719e62ade84148ed8553bfe49a700d0662ab9a17f95e3f5bb2ae51"
  action :install
  type "pkg"
  package_id "com.apple.pkg.AirPortUtility"
end
