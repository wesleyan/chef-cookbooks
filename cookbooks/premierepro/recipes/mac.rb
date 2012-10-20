#
# Cookbook Name:: premierepro
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "adobe_premiere_pro_cs6-6.0.2_Install.dmg" do
  app "adobe_premiere_pro_cs6-6.0.2_Install"
  volumes_dir "adobe_premiere_pro_cs6-6.0.2_Install"
  dmg_name "adobe_premiere_pro_cs6-6.0.2_Install"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/adobe_premiere_pro-cs6/adobe_premiere_pro_cs6-6.0.2_Install.dmg"
  checksum "d9250d17c2235d0b706c53853674b1526c786c3dac9f0880800d62c9b3f1203e"
  action :install
  type "pkg"
  package_id "com.adobe.Enterprise.install.A39ED404-FAD0-4310-8DC6-C00539826372"
end