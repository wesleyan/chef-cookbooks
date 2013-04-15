#
# Cookbook Name:: mcneel_rhinoceros
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "McNeel Rhinoceros" do
  app "Rhinoceros"
  volumes_dir "Rhinoceros"
  dmg_name "rhinoceros_wip_20130326"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/mcneel_rhinoceros/rhinoceros_wip_20130326.dmg"
  checksum "59e015d508b616e0033a0bba5dac04f5b186106e2c8fd3e81fac8438a3e7f599"
  action :install
  type "app"
  package_id "com.mcneel.rhinoceros.wip"
  version "5.0.0326"
end

