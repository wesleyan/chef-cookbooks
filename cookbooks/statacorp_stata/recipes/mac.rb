#
# Cookbook Name:: statacorp_stata
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install Stata
dmg_package "Stata" do
  app "Stata 12"
  volumes_dir "Stata 12"
  dmg_name "stata-12.1-20130225"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/statacorp_stata/stata-12.1-20130225.dmg"
  checksum "75787fa66ce9e630cededf7939b0a5fdc8ec5d6a26b4e7ee02a8a79a38d3b21f"
  action :install
  type "pkg"
  package_id "com.statacorp.stata"
  version "12.1"
end