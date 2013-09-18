#
# Cookbook Name:: colormunki_photo
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "BootChamp" do
  app "ColormunkiPhoto"
  volumes_dir "ColormunkiPhoto-1.1.1"
  dmg_name "ColormunkiPhoto-1.1.1"
  source "http://ims-chef.wesleyan.edu/os_x/colormunki_photo/ColormunkiPhoto-1.1.1.dmg"
  checksum "1332ede34e7c804e5a21b3edeab5d6cb06c271db0f617582d022bd492fea7f01"
  action :install
  type "mpkg"
  package_id "com.colormunki.photo"
  version "1.1.1"
end

