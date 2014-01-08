#
# Cookbook Name:: microsoft_skype
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install App
dmg_package "Microsoft Skype" do
  app "Skype"
  volumes_dir "Skype"
  dmg_name "Skype_6.12.60.431"
  source "http://ims-chef.wesleyan.edu/os_x/microsoft_skype/Skype_6.12.60.431.dmg"
  checksum "19a23402ada5ba7da4b300dad353771414b425975af869ef106eb267846a9660"
  action :install
  type "app"
  package_id "com.microsoft.skype"
  version "6.12.60431"
end