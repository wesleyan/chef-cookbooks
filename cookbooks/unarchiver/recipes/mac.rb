#
# Cookbook Name:: unarchiver
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
# All rights reserved - Do Not Redistribute
#
dmg_package "theunarchiver-3.6.1.dmg" do
  app "The Unarchiver"
  volumes_dir "The Unarchiver"
  dmg_name "theunarchiver-3.6.1"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/unarchiver/theunarchiver-3.6.1.dmg"
  checksum "eaab05d1434135b1b91012d83a113a4abce0e0be717524632b5fe85c967cd658"
  action :install
  type "app"
  package_id "cx.c3.theunarchiver"
  version "3.6.1"
end

launch_association_set_file_handler "public.archive" do
  bundle_id "cx.c3.theunarchiver"
  all_users true
end

launch_association_set_file_handler "public.tar-bzip2-archive" do
  bundle_id "cx.c3.theunarchiver"
  all_users true
end
