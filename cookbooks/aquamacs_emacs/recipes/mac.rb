#
# Cookbook Name:: aquamacs
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "Aquamacs-Emacs-2.4.dmg" do
  app "Aquamacs"
  volumes_dir "Aquamacs Emacs"
  dmg_name "Aquamacs-Emacs-2.4"
  source "http://ims-chef.wesleyan.edu/os_x/aquamacs_emacs/Aquamacs-Emacs-2.4.dmg"
  checksum "ca4e855e1edc5fd45b8a4f113ace07e8b0e2be67ecb6a3830b71c0acc067ae1d"
  action :install
  type "app"
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
