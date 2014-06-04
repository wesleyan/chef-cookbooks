#
# Cookbook Name:: aquamacs
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our .app
dmg_package "Aquamacs Emacs" do
  app "Aquamacs"
  volumes_dir "Aquamacs Emacs"
  dmg_name "Aquamacs-Emacs-3.0a"
  source "http://sw.wesleyan.edu/os_x/aquamacs_emacs/Aquamacs-Emacs-3.0a.dmg"
  checksum "1d833cb2e40c1af96713badc4efa7c1c9259317b91edcfe17059c73e989f9e07"
  action :install
  type "app"
  package_id "org.aquamacs.emacs"
  version "3.0.0"
end

# Create dock folder, if it does not exist
dock_add "Natural Sciences and Mathematics" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add icon to dock
dock_add "/Applications/Aquamacs.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end
