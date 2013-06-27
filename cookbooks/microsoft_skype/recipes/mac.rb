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
  dmg_name "Skype_6.5.0.443"
  source "http://ims-chef.wesleyan.edu/os_x/microsoft_skype/Skype_6.5.0.443.dmg"
  checksum "9b3497ca107e625b7759ec193200d49653e79ca876149d8b21e57e31480216cd"
  action :install
  type "app"
  package_id "com.microsoft.skype"
  version "6.5.0443"
end