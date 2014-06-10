#
# Cookbook Name:: ucsf_chimera
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our .app
dmg_package 'UCSF Chimera' do
  app 'Chimera'
  volumes_dir 'ChimeraInstaller'
  dmg_name 'chimera-1.9-mac64'
  source 'http://sw.wesleyan.edu/os_x/ucsf_chimera/chimera-1.9-mac64.dmg'
  checksum 'da2cd6e48c4a9c9698d73acb01672e0f86325cc07ad51418b875822185e2ce2b'
  action :install
  type 'app'
  package_id 'edu.ucsf.chimera'
  version '1.9.0'
end

# Create dock folder, if it does not exist
dock_add 'Natural Sciences and Mathematics' do
  all_users true
  action :folder_create
  show_as 'list'
  display_as 'folder'
  arrangement 'name'
end

# Add icon to dock
dock_add '/Applications/Chimera.app' do
  all_users true
  group 'Natural Sciences and Mathematics'
end
