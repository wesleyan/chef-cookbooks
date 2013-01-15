#
# Cookbook Name:: ccp4
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install CCP4
dmg_package "ccp4-6.3.0.2.dmg" do
  app "ccp4-6.3.0"
  volumes_dir "ccp4-6.3.0"
  dmg_name "ccp4-6.3.0.2"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/ccp4/ccp4-6.3.0.2.dmg"
  checksum "0f81ec10f32a92c53ae92959e976e0e9d375e98bf60e9553190605bf317dc50d"
  action :install
  type "mpkg"
  package_id "ccp4.ac.uk.ccp4.pkg"
end

# Install COOT
dmg_package "coot-0.7.0-i386.dmg" do
  app "coot-0.7.0-i386"
  volumes_dir "coot-0.7.0-i386"
  dmg_name "coot-0.7.0-i386"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/ccp4/coot-0.7.0-i386.dmg"
  checksum "a531deb1ad78cf1ecd8384732deaa332996b536df6a18e105af1dc5c73ffc9f2"
  action :install
  type "pkg"
  package_id "ccp4.ac.uk.coot.coot.pkg"
end