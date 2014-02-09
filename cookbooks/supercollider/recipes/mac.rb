#
# Cookbook Name:: supercollider
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our .app
dmg_package "SuperCollider" do
  app "SuperCollider"
  volumes_dir "SuperCollider"
  dmg_name "SuperCollider-3.6.6-OSX-universal"
  source "http://ims-chef.wesleyan.edu/os_x/supercollider/SuperCollider-3.6.6-OSX.dmg"
  checksum "4cc59a3ab70cbac60ce64b0fb7b6b86e070456e8f597229b05057ea6c4e1edb9"
  action :install
  type "dir"
  package_id "net.sourceforge.supercollider"
  version "3.6.6"
end

# Copy help files to tmp directory
cookbook_file "/tmp/JL_Book.zip" do
  mode 0666
end

# Create directories within default user profile.
directory "/System/Library/User Template/English.lproj/Library/Application Support/SuperCollider/Help" do
  mode 00755
  action :create
  recursive true
end

# Unzip help files to default user profile.
execute 'unzip /tmp/JL_Book.zip -d "/System/Library/User Template/English.lproj/Library/Application Support/SuperCollider/Help"' do
  returns [0,1]
end

# Replace Help index with modified version to show custom help files.
cookbook_file "/System/Library/User Template/English.lproj/Library/Application Support/SuperCollider/Help/Help.html" do
	mode 0755
end