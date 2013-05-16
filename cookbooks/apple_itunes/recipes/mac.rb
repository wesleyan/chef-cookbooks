#
# Cookbook Name:: apple_itunes
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "iTunes11.0.2.dmg" do
  app "Install iTunes"
  volumes_dir "iTunes"
  dmg_name "iTunes11.0.2"
  source "http://ims-chef.wesleyan.edu/os_x/apple_itunes/iTunes11.0.2.dmg"
  checksum "40525df3bc3bb367a0906200b23e211f510a4d565d3c8858dad9f2f9acfeb197"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iTunesX"
end
