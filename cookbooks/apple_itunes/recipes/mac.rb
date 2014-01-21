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
  dmg_name "iTunes11.1.3"
  source "http://ims-chef.wesleyan.edu/os_x/apple_itunes/iTunes11.1.3.dmg"
  checksum "7fd96b0f906f8e32b75803d20da70c3d662059056822f98f014ccba742b24858"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iTunesX"
  version "11.1.3"
end
