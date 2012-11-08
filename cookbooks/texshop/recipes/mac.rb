#
# Cookbook Name:: texshop
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install TeXShop
dmg_package "texshop-3.11.dmg" do
  app "TeXShop"
  volumes_dir "texshop"
  dmg_name "texshop-3.11"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/texshop-3/texshop-3.11.dmg"
  checksum "c2c0004398909a2751301c6b922f346d297adae0332e3c58ecd97fc8518d02ef"
  action :install
  type "app"
end

# Install MacTeX libraries
dmg_package "MacTeX-20120701.dmg " do
  app "MacTeX"
  volumes_dir "MacTeX"
  dmg_name "MacTeX-20120701"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/texshop-3/MacTeX-20120701.dmg"
  checksum "c2c0004398909a2751301c6b922f346d297adae0332e3c58ecd97fc8518d02ef"
  action :install
  type "pkg"
end