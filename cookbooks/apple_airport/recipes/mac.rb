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
  dmg_name "AirPortUtility6.3.1"
  source "http://ims-chef.wesleyan.edu/os_x/apple_airport/AirPortUtility6.3.1.dmg"
  checksum "f0cfed9e0acadd22d5d1f642e8e6cf882697bc7760f588b4d35920af792bc2f4"
  action :install
  type "pkg"
  package_id "com.apple.pkg.AirPortUtility"
  version "6.3.1"
end
