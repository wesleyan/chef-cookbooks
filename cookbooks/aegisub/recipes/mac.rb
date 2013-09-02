#
# Cookbook Name:: aegisub
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "Aegisub" do
  app "Aegisub"
  volumes_dir "Aegisub-3.0.4"
  dmg_name "Aegisub-3.0.4"
  source "http://ims-chef.wesleyan.edu/os_x/aegisub/Aegisub-3.0.4.dmg"
  checksum "37d8aca8a30619f09b66bcd1d6d4a925388c74b8a06287045e76ba84ca116e70"
  action :install
  type "app"
  package_id "org.aegisub.app"
  version "3.0.4"
end