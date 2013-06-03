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
  dmg_name "SMART Notebook"
  source "http://ims-chef.wesleyan.edu/os_x/smart_notebook/SMART-Notebook-11.1.dmg"
  checksum "553f3a6275010f8f855702d090f2121713f621bb4959f5b8f770c1dc574a34c1"
  action :install
  type "pkg"
  package_id "com.smart.notebook"
  version "11.1.1102"
end