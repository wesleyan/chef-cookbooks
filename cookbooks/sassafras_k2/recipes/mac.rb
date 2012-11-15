#
# Cookbook Name:: sassafras_k2
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "K2Client-7.0.1.3.dmg" do
  app "K2Client"
  volumes_dir "K2Client"
  dmg_name "K2Client-7.0.1.3"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/sassafras_k2-7/K2Client-7.0.1.3.dmg"
  checksum "dec2453dd47214952eb457b392acfb1aa817f0c5483f6a19a0e9ce4a048109cf"
  action :install
  type "mpkg"
  package_id "com.sassafras.pkg.KeyAccess"
end
