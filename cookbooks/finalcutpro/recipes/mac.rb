#
# Cookbook Name:: finalcutpro
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "finalcutpro-10.0.6.dmg" do
  app "Final Cut Pro"
  volumes_dir "Final Cut Pro"
  dmg_name "finalcutpro-10.0.6"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/apple_final_cut_pro-10/finalcutpro-10.0.6.dmg"
  checksum "67f9382847e77dcc753653c3f4d5360763128852a6e86c933a2566d601f77a38"
  action :install
  type "app"
end