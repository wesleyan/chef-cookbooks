#
# Cookbook Name:: toast
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "Toast_11_Titanium_11.1(1067).dmg" do
  app "Install Toast 11"
  volumes_dir "Toast 11 Titanium"
  dmg_name "Toast_11_Titanium_11.1(1067)"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/roxio_toast-11/Toast_11_Titanium_11.1(1067).dmg"
  checksum "f43efee0b55445af54aa0ba91d50e2efc438a0ae96bf0fa7908664d4560ce780"
  action :install
  type "pkg"
  package_id "com.roxio.toast.toast11Titanium.ToastTitanium.pkg"
end

dmg_package "Toast_Update-11.1.1072.dmg" do
  app "Toast Titanium"
  volumes_dir "Toast Titanium"
  dmg_name "Toast_Update-11.1.1072"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/roxio_toast-11/Toast_Update-11.1.1072.dmg"
  checksum "4fff922074c4a4043308c00bede4430436d36b9822494733347ec841e2e11bd8"
  action :install
  type "pkg"
  package_id "com.roxio.Toast.update.pkg"
end
