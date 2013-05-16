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
  dmg_name "Skype_6.4.60.833"
  source "http://ims-chef.wesleyan.edu/os_x/microsoft_skype/Skype_6.4.60.833.dmg"
  checksum "e381966e39c0f22ff013db80d552957245067cb6fcd0abf86321cbc815d27948"
  action :install
  type "app"
  package_id "com.microsoft.skype"
  version "6.4.60833"
end