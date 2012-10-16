#
# Cookbook Name:: r
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "R-2.15.1-signed.dmg" do
  app "R-2.15.1-signed"
  volumes_dir "R"
  dmg_name "R-2.15.1-signed"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/r-2/R-2.15.1-signed.dmg"
  checksum "3eae0bd7854296d19b6d638074754fb55518fea2408a4b9ab3dc5e247ef0f8dd"
  action :install
  type "pkg"
  package_id "org.r-project.R.Leopard.fw.pkg"
end