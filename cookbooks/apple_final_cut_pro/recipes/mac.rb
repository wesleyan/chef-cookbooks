#
# Cookbook Name:: finalcutpro
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "finalcutpro-10.0.7.dmg" do
  app "Final Cut Pro"
  volumes_dir "Final Cut Pro"
  dmg_name "finalcutpro-10.0.7"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_final_cut_pro/finalcutpro-10.0.7.dmg"
  checksum "d002712d4f9d9283c718fab8260f6a3350950ca6c6a7a82ed16881206bd045c6"
  action :install
  type "app"
end