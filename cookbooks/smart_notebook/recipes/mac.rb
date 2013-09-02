#
# Cookbook Name:: smart_notebook
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our package
dmg_package "SMART Notebook" do
  app "SMART Notebook"
  volumes_dir "SMART Notebook"
  dmg_name "smart_notebook-11.2.482"
  source "http://ims-chef.wesleyan.edu/os_x/smart_notebook/smart_notebook-11.2.482.dmg"
  checksum "e494b8ddec9c7c80f19a0ca14612828fe380a51d8b5232e0cf8c6dac788bd9af"
  action :install
  type "pkg"
  package_id "com.smarttech.notebook.custom"
  version "11.2.482"
end