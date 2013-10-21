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
  dmg_name "iTunes11.1.1"
  source "http://ims-chef.wesleyan.edu/os_x/apple_itunes/iTunes11.1.1.dmg"
  checksum "1a6ebb51e58440dc97edf69081b610596fb03bece520542868a39af5072b8505"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iTunesX"
  version "11.1.1"
end
