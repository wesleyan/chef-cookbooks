#
# Cookbook Name:: bitnami_mamp
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

dmg_package "Bitnami Mamp" do
  app "Bitnami MAMP"
  volumes_dir "MAMP 5.4.16-0"
  dmg_name "bitnami-mampstack-5.4.16-0-osx-x86_64-installer.dmg"
  source "http://ims-chef.wesleyan.edu/os_x/bitnami_mamp/bitnami-mampstack-5.4.16-0-osx-x86_64-installer.dmg"
  checksum "8ab4dca591aaf8dbbe1b4b2f8f7490472ad2e75e92ed974c8b5685485b9af475"
  action :install
  type "pkg"
  package_id "com.bitnami.mamp"
  version "5.4.16"
end

