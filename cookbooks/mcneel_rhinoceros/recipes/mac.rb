#
# Cookbook Name:: mcneel_rhinoceros
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
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/mcneel_rhinoceros/rhinoceros_wip_20130108.dmg"
  checksum "ccb1b3b46f7ec2369c1e07e84850435e1d918989ed14cd7779b48dc76cff90b9"
  action :install
  type "app"
  accept_eula true
end

