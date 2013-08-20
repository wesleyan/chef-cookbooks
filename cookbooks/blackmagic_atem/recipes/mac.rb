#
# Cookbook Name:: blackmagic_atem
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install the package
dmg_package "Blackmagic ATEM" do
  app "Blackmagic ATEM Switchers Installer 4.1.1"
  volumes_dir "Blackmagic ATEM Switchers"
  dmg_name "Blackmagic_ATEM_Switchers_4.1.1"
  source "http://ims-chef.wesleyan.edu/os_x/blackmagic_atem/Blackmagic_ATEM_Switchers_4.1.1.dmg"
  checksum "c4f39690bd2ee82fcf08df66f5573f42067b4118f965ffe52cf74a1db86a1ca4"
  action :install
  type "pkg"
  package_id "com.blackmagic-design.Switchers"
  version "4.1.1"
end