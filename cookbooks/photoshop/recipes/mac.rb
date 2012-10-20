#
# Cookbook Name:: photoshop
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "adobe_photoshop_cs6-13.0.1_Install.dmg" do
  app "adobe_photoshop_cs6-13.0.1_Install"
  volumes_dir "adobe_photoshop_cs6-13.0.1_Install"
  dmg_name "adobe_photoshop_cs6-13.0.1_Install"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/adobe_photoshop-cs6/adobe_photoshop_cs6-13.0.1_Install.dmg"
  checksum "3dcae9f5aab3d0348af762743b493fe8a17fc123f674373b9afeaf632e9d6825"
  action :install
  type "pkg"
  package_id ""
end