#
# Cookbook Name:: aegisub
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "Aegisub" do
  app "Aegisub"
  volumes_dir "Aegisub-3.1.1"
  dmg_name "Aegisub-3.1.1"
  source "http://ims-chef.wesleyan.edu/os_x/aegisub/Aegisub-3.1.1.dmg"
  checksum "cab09083d94d1376f986689484bb096a1dbf57b08802828ea8b7cc509308a203"
  action :install
  type "app"
  package_id "org.aegisub.app"
  version "3.1.1"
end