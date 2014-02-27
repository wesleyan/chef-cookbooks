#
# Cookbook Name:: printers
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
#
# Install Pharos client
dmg_package "Pharos Popup Printer Client" do
  app "Popup"
  volumes_dir "Popup"
  dmg_name "pharos_client_labs-8.4.1"
  source "http://ims-chef.wesleyan.edu/os_x/pharos_printer/pharos_client_labs-8.4.1.dmg"
  checksum "dd25cb018bc251bc9a749508c8596f6406fa850d0bab12c473530fbabcec8bf0"
  action :install
  type "pkg"
  package_id "com.pharos.popup"
  version "8.4.1"
end

printers "Printers" do
  action :set_default
end
