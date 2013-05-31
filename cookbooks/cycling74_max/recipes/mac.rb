#
# Cookbook Name:: cycling74_max
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "Cycling74 Max" do
  app "Max 6.1 Installer"
  volumes_dir "Max61_130304_ee85fad3_keyserver"	
  dmg_name "Max61_x86_ee85fad3_keyserver.dmg"
  source "http://ims-chef.wesleyan.edu/os_x/cycling74_max/Max61_x86_ee85fad3_keyserver.dmg"
  checksum "115f9c7be4c09248fecdd446b89458e891e1c91a39caef144327073f220d98ea"
  action :install
  type "pkg"
  package_id "com.cycling74.Max61.pkg"
  version "6.1.0"
end
