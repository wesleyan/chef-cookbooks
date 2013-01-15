#
# Cookbook Name:: autodesk_autocad
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "autocad_2012_sp3_english_mac_osx.dmg" do
  app "Install AutoCAD 2012 for Mac"
  volumes_dir "AutoCAD 2012 for Mac Installation"
  dmg_name "autocad_2012_sp3_english_mac_osx"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/autodesk_autocad/autocad_2012_sp3_english_mac_osx.dmg"
  checksum "35be3b0e656ebb0bbf038cbcab3aeb0191992def87f650d317ec2c6b0cdf9177"
  action :install
  type "pkg"
  package_id "com.autodesk.autocad2012"
end

# Insert license file
cookbook_file "/Applications/Autodesk/AutoCAD 2012/AutoCAD.app/Contents/licpath.lic"