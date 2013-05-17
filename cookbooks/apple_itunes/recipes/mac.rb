#
# Cookbook Name:: apple_itunes
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "iTunes11.0.3.dmg" do
  app "Install iTunes"
  volumes_dir "iTunes"
  dmg_name "iTunes11.0.3"
  source "http://ims-chef.wesleyan.edu/os_x/apple_itunes/iTunes11.0.3.dmg"
  checksum "917b272b06a0f6c67ca98fd10ccc2816b1a47e6c98d5a1059b4631ea70d8ef2f"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iTunesX"
  version "11.0.3"
end
