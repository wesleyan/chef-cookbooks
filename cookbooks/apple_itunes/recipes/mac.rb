#
# Cookbook Name:: apple_itunes
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "iTunes" do
  app "Install iTunes"
  volumes_dir "iTunes"
  dmg_name "iTunes11.0.4"
  source "http://ims-chef.wesleyan.edu/os_x/apple_itunes/iTunes11.0.4.dmg"
  checksum "fd3a9c7e502858b00edc65c46728b660cf199a00b2c56903cece87cbee697746"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iTunesX"
  version "11.0.4"
end
