#
# Cookbook Name:: rhinoceros
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "rhinoceros_wip_20121002.dmg" do
  app "Rhinoceros"
  volumes_dir "Rhinoceros"
  dmg_name "rhinoceros_wip_20121002"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/mcneel_rhinoceros-5/rhinoceros_wip_20121002.dmg"
  checksum "00b9e1e4ff93e6a6177bfbceb80870b9779b0aceb410a5ff3a5438c3d7d68be1"
  action :install
  type "app"
  accept_eula true
end

