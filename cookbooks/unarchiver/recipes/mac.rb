#
# Cookbook Name:: unarchiver
# Recipe:: default
#
# Copyright 2012, Wesleyan University
# All rights reserved - Do Not Redistribute
#
dmg_package "theunarchiver-3.6.dmg" do
  app "The Unarchiver"
  volumes_dir "The Unarchiver"
  dmg_name "theunarchiver-3.6"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/unarchiver/theunarchiver-3.6.dmg"
  checksum "65a47029ba7c37668b414faded859db691dc2969c47c07eb97a9626edaf5a3c0"
  action :install
  type "app"
  package_id "cx.c3.theunarchiver"
end
