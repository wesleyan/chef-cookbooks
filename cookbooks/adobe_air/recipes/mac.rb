#
# Cookbook Name:: adobe_air
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package, package was generated with autopkg as Adobe AIR is a .app as installer because Adobe is awesome.
dmg_package "Adobe AIR" do
  app "Adobe AIR"
  volumes_dir "Adobe AIR"
  dmg_name "adobe_air-3.9.0.1030"
  source "http://ims-chef.wesleyan.edu/os_x/adobe_air/adobe_air-3.9.0.1030.dmg"
  checksum "8f76653edc88cda21c9d5b98f316ce5d2910cb7799cea9f8c137c7af86667ddd"
  action :install
  type "pkg"
  package_id "com.pkg.AdobeAIR"
  version "3.9.01030"
end