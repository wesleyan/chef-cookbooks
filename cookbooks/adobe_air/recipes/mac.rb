#
# Cookbook Name:: adobe_air
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package, package was generated with autopkg as Adobe AIR is a .app as installer because Adobe is awesome.
dmg_package "Adobe AIR" do
  app "AdobeAIR"
  volumes_dir "AdobeAIR"
  dmg_name "adobeair-13.0.0.111"
  source "http://ims-chef.wesleyan.edu/os_x/adobe_air/adobeair-13.0.0.111.dmg"
  checksum "585b691d0bef88cff06504097454c7d42c8d577aa4808a37492241727d7d9b32"
  action :install
  type "pkg"
  package_id "com.adobe.pkg.AIR"
  version "13.0.0111"
end