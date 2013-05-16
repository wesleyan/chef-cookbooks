#
# Cookbook Name:: tomerbe_soundhack
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
  source "http://ims-chef.wesleyan.edu/os_x/tomerbe_soundhack/SH896.dmg"
  checksum "fd4b8e74d10b5d1744e6ecd3af469ee28be22ba675bffe88f823c62bcd8b30cd"
  action :install
  type "pkg"
  package_id "com.tomErbe.soundhack0.SoundHack"
end
