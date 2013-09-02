#
# Cookbook Name:: bitnami_mamp
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

dmg_package "BitNami Mamp" do
  options "--mode unattended"
  app "BitNami MAMP.app/Contents/MacOS/installbuilder.sh"
  volumes_dir "MAMP 5.4.16-0"
  dmg_name "bitnami-mampstack-5.4.16-0-osx-x86_64-installer"
  source "http://ims-chef.wesleyan.edu/os_x/bitnami_mamp/bitnami-mampstack-5.4.16-0-osx-x86_64-installer.dmg"
  checksum "8ab4dca591aaf8dbbe1b4b2f8f7490472ad2e75e92ed974c8b5685485b9af475"
  action :install
  type "custom"
  package_id "com.bitnami.mamp"
  version "5.4.16"
end

