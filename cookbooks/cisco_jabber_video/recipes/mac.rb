#
# Cookbook Name:: cisco_jabber_video
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Installs App
dmg_package "Cisco Jabber Video" do
  app "Jabber Video"
  volumes_dir "Jabber Video"
  dmg_name "JabberVideo4.6GA"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/cisco_jabber_video/JabberVideo4.6GA.dmg"
  checksum "71fa7785ddba911871bf08aa75b98f60493b6aead717c35ad70300113137a0c9"
  action :install
  type "app"
  package_id "com.cisco.jabber.video"
  version "4.6"
end