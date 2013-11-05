#
# Cookbook Name:: apple_itunes
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our pkg
dmg_package "iTunes" do
  app "Install iTunes"
  volumes_dir "iTunes"
  dmg_name "iTunes11.1.2"
  source "http://ims-chef.wesleyan.edu/os_x/apple_itunes/iTunes11.1.2.dmg"
  checksum "fe983ac3e3899a6c92faf8e7580e136cdf886b47658545401c349cbb574d5fce"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iTunesX"
  version "11.1.2"
end
