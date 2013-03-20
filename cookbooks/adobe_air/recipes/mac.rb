#
# Cookbook Name:: adobe_air
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package, package was captured with Composer as Adobe AIR is a .app as installer because Adobe is awesome.
dmg_package "Adobe AIR" do
  app "Adobe AIR"
  volumes_dir "Adobe AIR"
  dmg_name "adobe_air-3.6.0.6090"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/adobe_air/adobe_air-3.6.0.6090.dmg"
  checksum "21e7f115c3be416075e65cdaaa05a31ef41c56918a24c1c501f84c68c4214321"
  action :install
  type "pkg"
  package_id "com.pkg.Adobe.AIR"
  version "3.6.0.6090"
end