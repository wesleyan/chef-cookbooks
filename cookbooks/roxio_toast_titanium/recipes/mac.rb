#
# Cookbook Name:: toast_11_titanium
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "Roxio Toast Titanium" do
  app "Install Toast 11"
  volumes_dir "Toast 11 Titanium"
  dmg_name "Toast11Titanium"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/roxio_toast_titanium/Toast11Titanium.dmg"
  checksum "428e7f185937cf26c87423713d8c167390cefc1612b129f2b38636f0c6c4ce84"
  action :install
  type "pkg"
end

dmg_package "Update Toast 11 to 11.1.1072" do
  app "Toast Titanium"
  volumes_dir "Toast Titanium 11.1"
  dmg_name "toast_titanium-11.1.1072"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/roxio_toast_titanium/toast_titanium-11.1.1072.dmg"
  checksum "8d6a5f941f924525be200ba3474d1861d0a4a04c4445766d1b8742f1b6d57e27"
  action :install
  type "pkg"
end


