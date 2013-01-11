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
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/sassafras_k2/K2Client-7.0.1.3.dmg"
  checksum "24caabdf98a951ed2af56f511e89d457f01cb9ad86242afa17410b7e34b9e262"
  action :install
  type "mpkg"
  package_id "com.sassafras.pkg.KeyAccess"
end
