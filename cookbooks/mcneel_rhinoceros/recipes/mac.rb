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
  dmg_name "rhinoceros_wip_20130815"
  source "http://ims-chef.wesleyan.edu/os_x/mcneel_rhinoceros/rhinoceros_wip_20130815.dmg"
  checksum "0ae065af85ea9649e1ac24c9eb5b35e39daa529a52126ed56d8733f4530c4fb8"
  action :install
  type "app"
  package_id "com.mcneel.rhinoceros.wip"
  version "5.0.0815"
end

