#
# Cookbook Name:: apple_itunes
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "iTunes" do
  app "Install iTunes"
  volumes_dir "iTunes"
  dmg_name "iTunes11.0.5"
  source "http://ims-chef.wesleyan.edu/os_x/apple_itunes/iTunes11.0.5.dmg"
  checksum "faea18b2c267ca279470ee690f262c6eb591ec322c9203cc81b94f6c7da5b914"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iTunesX"
  version "11.0.5"
end
