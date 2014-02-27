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
  dmg_name "adobe_air-4.0.0.1390"
  source "http://ims-chef.wesleyan.edu/os_x/adobe_air/adobe_air-4.0.0.1390.dmg"
  checksum "6f92e8eec0eb491a79205220946d4cfc33ef15cfccb63361f89246c70ff93a9a"
  action :install
  type "pkg"
  package_id "com.adobe.pkg.AIR"
  version "4.0.1390"
end