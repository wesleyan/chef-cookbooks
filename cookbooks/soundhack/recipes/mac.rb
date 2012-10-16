#
# Cookbook Name:: soundhack
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "SH896.dmg" do
  app "SoundHack 0.896 - Universal Binary"
  volumes_dir "SH896"
  dmg_name "SH896"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/soundhack-0/SH896.dmg"
  checksum "5e5f296c9ee089a07208d9bf9791ef2d88b75f6c4854236fb0952ec82d930aec"
  action :install
  type "pkg"
  package_id "com.tomErbe.soundhack0.SoundHack"
end
