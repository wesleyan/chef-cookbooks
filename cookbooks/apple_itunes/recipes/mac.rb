#
# Cookbook Name:: itunes
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "iTunes10.7" do
  app "Install iTunes"
  volumes_dir "iTunes 10.7"
  dmg_name "iTunes10.7"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/apple_itunes-10/iTunes10.7.dmg"
  checksum "3d92702ac8b7b2a07bcfe13cc6e0ce07c67362eb4bb2db69f3aebc0cbef27548"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iTunesX"
end
