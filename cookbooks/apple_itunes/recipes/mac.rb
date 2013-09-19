#
# Cookbook Name:: apple_itunes
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "iTunes" do
  app "Install iTunes"
  volumes_dir "iTunes"
  dmg_name "iTunes11.1"
  source "http://ims-chef.wesleyan.edu/os_x/apple_itunes/iTunes11.1.dmg"
  checksum "3f25bf6449c2c29883d6b0891b5d977ff2cf82fb778e548ced09939d53f07ab9"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iTunesX"
  version "11.1.0"
end
