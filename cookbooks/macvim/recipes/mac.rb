#
# Cookbook Name:: macvim
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our package.
dmg_package 'MacVim-7.4-snapshot-73.dmg' do
  app 'MacVim'
  volumes_dir 'MacVim'
  dmg_name 'MacVim-7.4-snapshot-73'
  source 'http://sw.wesleyan.edu/os_x/macvim/MacVim-7.4-snapshot-73.dmg'
  checksum 'c0422e98ee9fafd9c6dca05ee250acd4bdec1e8dfcfb012e88a4700483cddde1'
  action :install
  type 'app'
end

# Install the mvim script so that users can run MacVim from the command line.
cookbook_file '/usr/local/bin/mvim'

# Create dock folder, if it does not exist
dock_add 'Natural Sciences and Mathematics' do
  all_users true
  action :folder_create
  show_as 'list'
  display_as 'folder'
  arrangement 'name'
end

# Add icon to dock
dock_add '/Applications/MacVim.app' do
  all_users true
  group 'Natural Sciences and Mathematics'
end
