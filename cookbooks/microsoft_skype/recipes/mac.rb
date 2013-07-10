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
  dmg_name "Skype_6.6.0.467"
  source "http://ims-chef.wesleyan.edu/os_x/microsoft_skype/Skype_6.6.0.467.dmg"
  checksum "91ad5ef2336aae7e8e256d86bfe1cea1b017e4d1d218a958ee7f220987ca7999"
  action :install
  type "app"
  package_id "com.microsoft.skype"
  version "6.6.0467"
end