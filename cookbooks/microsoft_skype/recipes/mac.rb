#
# Cookbook Name:: microsoft_skype
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install App
dmg_package "Microsoft Skype" do
  app "Skype"
  volumes_dir "Skype"
  dmg_name "Skype_6.3.59.582"
  source "http://ims-chef.wesleyan.edu/os_x/microsoft_skype/Skype_6.3.59.582.dmg"
  checksum "b99d0ba3a91ba8223e384debd82da613f44e14028a9b8e9e17462ab872cbdd50"
  action :install
  type "app"
  package_id "com.microsoft.skype"
  version "6.3.59.582"
end