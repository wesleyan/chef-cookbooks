#
# Cookbook Name:: cls_labstats
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "labstats-5.1.21007.149-client.dmg" do
  app "LabStats 5 Client"
  volumes_dir "LabStats 5 Client"
  dmg_name "labstats-5.1.21007.149-client"
  source "http://ims-chef.wesleyan.edu/os_x/cls_labstats/labstats-5.1.21007.149-client.dmg"
  checksum "e3859444fd6b28783d883fe6e1eff23276fea94cb3238762971ca77db4e0e988"
  action :install
  type "pkg"
  package_id "com.computerlabsolutions.labstats"
end
