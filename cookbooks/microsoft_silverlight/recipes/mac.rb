#
# Cookbook Name:: silverlight
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "Microsoft Silverlight" do
  app "Silverlight"
  volumes_dir "Silverlight"
  dmg_name "Silverlight"
  source "http://sw.wesleyan.edu/os_x/microsoft_silverlight/silverlight-5.1.30317.0.dmg"
  checksum "a425c522f84c8c3b2bcfb5f40abab0f8d67733f824be5c0e383819d06f230007"
  action :install
  type "pkg"
  package_id "com.microsoft.SilverlightInstaller"
  version "5.1.303170"
end
