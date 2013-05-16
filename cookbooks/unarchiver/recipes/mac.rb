#
# Cookbook Name:: unarchiver
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
# All rights reserved - Do Not Redistribute
#
# Install app
dmg_package "The Unarchiver" do
  app "The Unarchiver"
  volumes_dir "The Unarchiver"
  dmg_name "the_unarchiver-3.7"
  source "http://ims-chef.wesleyan.edu/os_x/unarchiver/the_unarchiver-3.7.dmg"
  checksum "89539d7c811b3ab0a4f1722edf654f9e32fc273277fed7734929c11c5218179a"
  action :install
  type "app"
  package_id "cx.c3.theunarchiver"
  version "3.7.0"
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
