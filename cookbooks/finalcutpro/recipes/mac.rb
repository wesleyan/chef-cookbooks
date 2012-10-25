#
# Cookbook Name:: finalcutpro
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "finalcutpro-10.0.5.dmg" do
  app "Final Cut Pro"
  volumes_dir "Final Cut Pro"
  dmg_name "finalcutpro-10.0.5"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/apple_final_cut_pro-10/finalcutpro-10.0.5.dmg"
  checksum "36d4b90c3f405f07f577a7dd4f1b6826ba9797281e937b287a54f140e049b9c9"
  action :install
  type "app"
end