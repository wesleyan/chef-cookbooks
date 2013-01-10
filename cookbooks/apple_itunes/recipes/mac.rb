#
# Cookbook Name:: apple_itunes
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "iTunes11.0.1.dmg" do
  app "Install iTunes"
  volumes_dir "iTunes"
  dmg_name "iTunes11.0.1"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_itunes/iTunes11.0.1.dmg"
  checksum "f45610ee3f3755cb4b277fb78f0018e992b05e2f4ebc0fcd0988d31826f7df00"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iTunesX"
end
