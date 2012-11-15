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
  checksum "ae0351cb42621060709c6bb42a991e009b453090ba657bced0889ae5153655a3"
  action :install
  type "pkg"
  package_id "com.sassafras.pkg.KeyAccess"
end
