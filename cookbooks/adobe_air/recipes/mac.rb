#
# Cookbook Name:: air
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Need to figure out app as installer
dmg_package "AdobeAIR.dmg" do
  app ""
  volumes_dir "Adobe AIR"
  dmg_name "AdobeAIR"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/adobe_air-3/AdobeAIR.dmg"
  checksum "1e1b7c4b199ad4eb80511058e0a4215cfbfd47822e8f125f32dbc519592434d0"
  action :install
  type ""
  package_id ""
end