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
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/mrbayes-3/MrBayes-3.2.1_installer_MAC.dmg"
  checksum "0dfac015e9ced1ae00f5fa304f53a40f03a914fc21f4fe8a3a273508a48f632c"
  action :install
  type "pkg"
  package_id "org.NRM.mrbayesV32.mb.pkg"
end
