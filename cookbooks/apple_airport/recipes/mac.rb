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
  dmg_name "AirPortUtility6.3"
  source "http://ims-chef.wesleyan.edu/os_x/apple_airport/AirPortUtility6.3.dmg"
  checksum "1b5cc84c2063d0b068ee0b9b8e508fe98747d71ffad3174c6c5e1775c6751d55"
  action :install
  type "pkg"
  package_id "com.apple.pkg.AirPortUtility"
  version "6.3.0"
end
