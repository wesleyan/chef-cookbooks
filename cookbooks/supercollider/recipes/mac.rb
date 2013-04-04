#
# Cookbook Name:: supercollider
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "SuperCollider-3.6.2-OSX-universal.dmg" do
  app "SuperCollider"
  volumes_dir "SuperCollider"
  dmg_name "SuperCollider-3.6.2-OSX-universal"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/supercollider/SuperCollider-3.6.2-OSX-universal.dmg"
  checksum "109866f7970f3caa41830620e370c5b3e70bba37ccdb97dee40b62307941666a"
  action :install
  type "dir"
  package_id "net.sourceforge.supercollider"
  version "3.6.2"
end
