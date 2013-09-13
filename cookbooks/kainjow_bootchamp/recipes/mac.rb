#
# Cookbook Name:: kainjow_bootchamp
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "BootChamp" do
  app "BootChamp"
  volumes_dir "BootChamp"
  dmg_name "bootchamp-1.5.1"
  source "http://ims-chef.wesleyan.edu/os_x/kainjow_bootchamp/bootchamp-1.5.1.dmg"
  checksum "21e4b14758313724825f2397c3f22ead499ac9d0855a41dd40eb972a4bd4cae8"
  action :install
  type "app"
  package_id "com.kainjow.bootchamp"
  version "1.5.1"
end