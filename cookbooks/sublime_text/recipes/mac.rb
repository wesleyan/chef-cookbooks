#
# Cookbook Name:: sublime_text
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

# Install Sublime Text
dmg_package "Sublime Text" do
  app "Sublime Text"
  volumes_dir "Sublime Text"
  dmg_name "SublimeText-3047.dmg"
  source "http://ims-chef.wesleyan.edu/os_x/sublime_text/SublimeText-3047.dmg"
  checksum "7b60d9398514caa000fc65140fc6ac5e9332413489ed86cfcfac248d23b8a303"
  action :install
  type "app"
  package_id "com.sublimetext"
  version "3.0.3047"
end
