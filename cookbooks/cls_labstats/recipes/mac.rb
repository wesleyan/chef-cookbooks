#
# Cookbook Name:: cls_labstats
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "labstats-5.2.30708.133-client.dmg" do
  app "LabStats 5 Client"
  volumes_dir "LabStats 5 Client"
  dmg_name "labstats-5.2.30708.133-client"
  source "http://ims-chef.wesleyan.edu/os_x/cls_labstats/labstats-5.2.30708.133-client.dmg"
  checksum "49cc20835cb6911b0f982d777808a4eae83d0bd3128433099e447a45d92929df"
  action :install
  type "pkg"
  package_id "com.computerlabsolutions.labstats"
  version "5.2.30708133"
end
