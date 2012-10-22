#
# Cookbook Name:: silverlight
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "Silverlight.dmg" do
  app "Silverlight"
  volumes_dir "Silverlight"
  dmg_name "Silverlight"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/microsoft_silverlight-5/Silverlight.dmg"
  checksum "aac8a67e234e93f56751598cb67da6e58ebb9aaa93469dd038c9717f2490e674"
  action :install
  type "pkg"
  package_id "com.microsoft.SilverlightInstaller"
end
