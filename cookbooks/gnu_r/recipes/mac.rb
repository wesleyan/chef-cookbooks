#
# Cookbook Name:: gnu_r
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "R-3.0.0.dmg" do
  app "R-3.0.0"
  volumes_dir "R"
  dmg_name "R-3.0.0"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/gnu_r/R-3.0.0.dmg"
  checksum "b45540be6422e8aef7a98782629fcc147c67cae46f95cb721c7d8460b18c348a"
  action :install
  type "pkg"
  package_id "org.r-project.R.x86_64.fw.pkg"
  version "3.0.0"
end