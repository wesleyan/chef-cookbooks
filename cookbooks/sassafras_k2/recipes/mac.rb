#
# Cookbook Name:: sassafras_k2
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "Keyserver Client" do
  app "K2Client"
  volumes_dir "K2Client"
  dmg_name "k2client-7.0.1.6.dmg"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/sassafras_k2/k2client-7.0.1.6.dmg"
  checksum "161a31bc7736b4ba9a02e92fd84d6ab9754e0d5ac986d5630af656d963a1c0cd"
  action :install
  type "mpkg"
  package_id "com.sassafras.pkg.KeyAccess"
  version "7.0.16"
end
