#
# Cookbook Name:: macvim
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "MacVim-7.3-snapshot-66.dmg" do
  app "MacVim"
  volumes_dir "MacVim"
  dmg_name "MacVim-7.3-snapshot-66"
  source "http://ims-chef.wesleyan.edu/os_x/macvim/MacVim-7.3-snapshot-66.dmg"
  checksum "c0422e98ee9fafd9c6dca05ee250acd4bdec1e8dfcfb012e88a4700483cddde1"
  action :install
  type "app"
end