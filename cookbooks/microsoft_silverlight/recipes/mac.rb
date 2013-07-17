#
# Cookbook Name:: silverlight
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "Microsoft Silverlight" do
  app "Silverlight"
  volumes_dir "Silverlight"
  dmg_name "Silverlight"
  source "http://ims-chef.wesleyan.edu/os_x/microsoft_silverlight/silverlight-5.1.20125.dmg"
  checksum "74df4fc3ea10e029aed29a2900c9a302d17295dd2406bb2c09e09309b5f54422"
  action :install
  type "pkg"
  package_id "com.microsoft.SilverlightInstaller"
  version "5.1.201250"
end
