#
# Cookbook Name:: tug_mactex
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

# Install TeXShop
#dmg_package "texshop-3.11.dmg" do
#  app "TeXShop"
#  volumes_dir "texshop"
#  dmg_name "texshop-3.11"
#  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/texshop-3/texshop-3.11.dmg"
#  checksum "c2c0004398909a2751301c6b922f346d297adae0332e3c58ecd97fc8518d02ef"
#  action :install
#  type "app"
#end

# Install MacTeX libraries (includes the latest TeXShop for now)
dmg_package "MacTeX-20120701.dmg" do
  app "MacTeX"
  volumes_dir "MacTeX"
  dmg_name "MacTeX-20120701"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/tug_mactex/MacTeX-20120701.dmg"
  checksum "c8b5dfc0ddc3ad412b998e4d617de0c20c36d73b1b65575fa85356f3fe2fd01c"
  action :install
  type "pkg"
  package_id "org.tug.mactex.gui"
end