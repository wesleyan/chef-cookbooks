#
# Cookbook Name:: apple_itunes
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our pkg
dmg_package "iTunes" do
  app "Install iTunes"
  volumes_dir "iTunes"
  dmg_name "iTunes11.1.4"
  source "http://ims-chef.wesleyan.edu/os_x/apple_itunes/iTunes11.1.4.dmg"
  checksum "39d0a784c771c1eb460be0b093eabc0ffaed50618119117d55cb3ce30458327f"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iTunesX"
  version "11.1.4"
end
