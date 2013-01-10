#
# Cookbook Name:: rhinoceros
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "rhinoceros_wip_20130108.dmg" do
  app "Rhinoceros"
  volumes_dir "Rhinoceros"
  dmg_name "rhinoceros_wip_20130108"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/mcneel_rhinoceros-5/rhinoceros_wip_20121018.dmg"
  checksum "177cf6a2c3854d4acc326c20db80409ce5c26f959ea6801a6562753bff748ff5"
  action :install
  type "app"
  accept_eula true
end

