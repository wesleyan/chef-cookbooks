#
# Cookbook Name:: gnu_r
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "R-2.15.2.dmg" do
  app "R-2.15.2"
  volumes_dir "R"
  dmg_name "R-2.15.2"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/gnu_r/R-2.15.2.dmg"
  checksum "0c6e9de8431aac50f76a7f6a7a8cec82a9186ae3f8d7f9dd4d680613df686203"
  action :install
  type "pkg"
  package_id "org.r-project.R.Leopard.fw.pkg"
end