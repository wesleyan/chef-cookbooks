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
  dmg_name "the_unarchiver-3.9.1"
  source "http://ims-chef.wesleyan.edu/os_x/unarchiver/the_unarchiver-3.9.1.dmg"
  checksum "d4c25801da1a5751be555ef0815c6dac84bcd9f8cb846057899a2e27e05725e9"
  action :install
  type "app"
  package_id "cx.c3.theunarchiver"
  version "3.9.1"
end

# Set the Unarchiver as the default application for most archive files.
launch_association_set_file_handler "public.archive" do
  bundle_id "cx.c3.theunarchiver"
  all_users true
end

# Set as default handler for tar/gz/bz, as public.archive doesn't cover these for some reason.
launch_association_set_file_handler "public.tar-bzip2-archive" do
  bundle_id "cx.c3.theunarchiver"
  all_users true
end
