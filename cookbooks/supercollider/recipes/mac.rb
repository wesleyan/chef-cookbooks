#
# Cookbook Name:: supercollider
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "SuperCollider-3.5.6-OSX-universal.dmg" do
  app "SuperCollider"
  volumes_dir "SuperCollider"
  dmg_name "SuperCollider-3.5.6-OSX-universal"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/supercollider-3/SuperCollider-3.5.6-OSX-universal.dmg"
  checksum "4246884546fd02b9156fffb120ff1d4a4c85db483d46d26fa1d6abab273a8ccf"
  action :install
  type "dir"
end
