#
# Cookbook Name:: artstor_oiv
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install the app from a .dmg
dmg_package "ARTstor OIV" do
  app "OIV"
  volumes_dir "OIV"
  dmg_name "OIV-3.1.3"
  source "http://ims-chef.wesleyan.edu/os_x/artstor_oiv/OIV-3.1.3.dmg"
  checksum "f78e196df8bb4cb293a06d5e70bff6012539c04cc680162aa644d179ef05708"
  action :install
  type "app"
  package_id "com.artstor.oiv"
  version "3.1.3"
end