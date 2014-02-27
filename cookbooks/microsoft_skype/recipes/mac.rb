#
# Cookbook Name:: microsoft_skype
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install App
dmg_package "Microsoft Skype" do
  app "Skype"
  volumes_dir "Skype"
  dmg_name "skype-6.12"
  source "http://ims-chef.wesleyan.edu/os_x/microsoft_skype/skype-6.12.dmg"
  checksum "856df8d0bb8602f2ac6a52d51d3255aba291c3c291fc687fda088f74a71c4d06"
  action :install
  type "pkg"
  package_id "com.skype.skype"
  version "6.12.0"
end