#
# Cookbook Name:: autodesk_autocad
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "autocad-2012SP3.dmg" do
  app "autocad-2012SP3"
  volumes_dir "autocad-2012SP3"
  dmg_name "autocad-2012SP3"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/autodesk_autocad/autocad-2012SP3.dmg"
  checksum "dca9c9d54da90348d21f7ba754efcc0fca6b9411d014b4cb1473669550ab3a71"
  action :install
  type "pkg"
  package_id ""
end


# Insert license file
#cookbook_file "/Applications/Autodesk/AutoCAD 2012/AutoCAD.app/Contents/licpath.lic"