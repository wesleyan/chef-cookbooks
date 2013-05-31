#
# Cookbook Name:: gnu_r
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "R" do
  app "R-3.0.1"
  volumes_dir "R-3.0.1"
  dmg_name "R-3.0.1"
  source "http://ims-chef.wesleyan.edu/os_x/gnu_r/R-3.0.1.dmg"
  checksum "33311735156d113119bf6dce96ae4ab90d775418ae6085c0f78f517c752df7d9"
  action :install
  type "pkg"
  package_id "org.r-project.R.x86_64.fw.pkg"
  version "3.0.1"
end