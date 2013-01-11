#
# Cookbook Name:: mrbayes
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "MrBayes-3.2.1_installer_MAC.dmg" do
  app "MrBayes-3.2.1_installer_MAC"
  volumes_dir "MrBayes"
  dmg_name "MrBayes-3.2.1_installer_MAC"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/mrbayes/MrBayes-3.2.1_installer_MAC.dmg"
  checksum "696f218e9e65dbc48b4316b51c40755952b443d09c7326b27219a84dc163fce0"
  action :install
  type "pkg"
  package_id "org.NRM.mrbayesV32.mb.pkg"
end
