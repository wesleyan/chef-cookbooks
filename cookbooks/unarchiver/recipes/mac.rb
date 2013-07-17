#
# Cookbook Name:: unarchiver
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
# All rights reserved - Do Not Redistribute
#
# Install app
dmg_package "The Unarchiver" do
  app "The Unarchiver"
  volumes_dir "The Unarchiver"
  dmg_name "the_unarchiver-3.8"
  source "http://ims-chef.wesleyan.edu/os_x/unarchiver/the_unarchiver-3.8.dmg"
  checksum "3aa4dc1b72baa9a72c9e2330693ce51e0a06e3a420bc7a23e5ba45b8253995d4"
  action :install
  type "app"
  package_id "cx.c3.theunarchiver"
  version "3.8.0"
end

# Set the Unarchiver as the default application for most archive files
launch_association_set_file_handler "public.archive" do
  bundle_id "cx.c3.theunarchiver"
  all_users true
end

launch_association_set_file_handler "public.tar-bzip2-archive" do
  bundle_id "cx.c3.theunarchiver"
  all_users true
end
