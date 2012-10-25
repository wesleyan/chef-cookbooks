#
# Cookbook Name:: macvim
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "MacVim-snapshot-65.dmg" do
  app "MacVim"
  volumes_dir "MacVim-snapshot-65"
  dmg_name "MacVim-snapshot-65"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/macvim-7/MacVim-snapshot-65.dmg"
  checksum "9d8c0c7b86200d00ad45a70385650f2b13fc7f3e919d649d9e78e447519590ac"
  action :install
  type "app"
end