#
# Cookbook Name:: unarchiver
# Recipe:: default
#
# Copyright 2012, Wesleyan University
# All rights reserved - Do Not Redistribute
#
dmg_package "TheUnarchiver3.4" do
  app "The Unarchiver"
  volumes_dir "TheUnarchiver3.4"
  dmg_name "TheUnarchiver3.4"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/unarchiver-3/TheUnarchiver3.4.dmg"
  checksum "780e168be15d4a28061c7fa223f72849f1b42e47b873f48de9c644c16733a8d8"
  action :install
  type "pkg"
  package_id "cx.c3.theunarchiver"
end
