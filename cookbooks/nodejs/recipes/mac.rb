#
# Cookbook Name:: nodejs
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

# Install PhoneGap
dmg_package "Node JS" do
  app "node-v0.10.18"
  volumes_dir "nodejs"
  dmg_name "nodejs"
  source "http://ims-chef.wesleyan.edu/os_x/nodejs/nodejs.dmg"
  checksum "51643c932245bbe5dc97dce0a84e38225c6c7e6e841122bd3ef6397fa58c016b"
  action :install
  type "pkg"
  package_id "com.nodejs"
  version "0.10.18"
end

