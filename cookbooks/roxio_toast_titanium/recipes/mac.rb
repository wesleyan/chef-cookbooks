#
# Cookbook Name:: toast_11_titanium
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "Roxio Toast 11 Titanium" do
  app "Roxio Toast 11 Titanium"
  volumes_dir "Roxio Toast 11 Titanium"
  dmg_name "toast_titanium-11.1.1072"
  source "http://ims-chef.wesleyan.edu/os_x/roxio_toast_titanium/toast_titanium-11.1.1072.dmg"
  checksum "e06997333b5f03b30ee6cf5dee3dc64ec94c68f2bf342587fab7686c90c1e536"
  action :install
  type "pkg"
  package_id "com.roxio.toast.titanium"
  version "11.1.1072"
end

