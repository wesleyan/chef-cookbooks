#
# Cookbook Name:: audacity
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "audacity-macosx-ub-2.0.2.dmg" do
  app "Audacity"
  volumes_dir "Audacity 2.0.2"
  dmg_name "audacity-macosx-ub-2.0.2"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/audacity-2/audacity-macosx-ub-2.0.2.dmg"
  checksum "1deaa15b9e0cbe2835dfbd3a27d76a91fd9d0fa8182528d0ac077bc5dcc246c1"
  action :install
  type "dir"
end
