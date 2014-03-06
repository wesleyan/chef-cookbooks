#
# Cookbook Name:: wacom_tablet
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our pkg
dmg_package "Wacom Tablet Drivers" do
  app "Install Wacom Tablet"
  volumes_dir "WacomTablet"
  dmg_name "WacomTablet_6.3.7-3"
  source "http://ims-chef.wesleyan.edu/os_x/wacom_tablet/WacomTablet_6.3.7-3.dmg"
  checksum "894271d4ae01781664e8489e57471aaf78c7b84a48dce78b219a9259c6fc4e44"
  package_id "com.wacom.installwacomtablet"
  version "6.3.7"
  action :install
  type "pkg"
end
