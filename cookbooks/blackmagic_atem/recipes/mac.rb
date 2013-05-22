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
  app "Blackmagic ATEM Switchers Installer 4.0"
  volumes_dir "Blackmagic ATEM Switchers"
  dmg_name "Blackmagic_ATEM_Switchers_4.0"
  source "http://ims-chef.wesleyan.edu/os_x/blackmagic_atem/Blackmagic_ATEM_Switchers_4.0.dmg"
  checksum "e6e4dbb0d17282bf7831a4be5db450d5ef29fc082952744c5971cc2f6bf9ce50"
  action :install
  type "pkg"
  package_id "com.blackmagic-design.Switchers"
  version "4.0"
end