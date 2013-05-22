#
# Cookbook Name:: telestream_wirecast
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install the .app
dmg_package "Telestream Wirecast" do
  app "Wirecast"
  volumes_dir "Wirecast"
  dmg_name "Wirecast-4.3"
  source "http://ims-chef.wesleyan.edu/os_x/telestream_wirecast/Wirecast-4.3.dmg"
  checksum "9643ce59135bc9b9e2fbe5e1ca872640c19eb3f7c4af717a2b68b7011f8d1aa2"
  action :install
  type "app"
  package_id "net.telestream.wirecast"
  version "4.3.0"
end