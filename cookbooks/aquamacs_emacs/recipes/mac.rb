#
# Cookbook Name:: aquamacs
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "Aquamacs-Emacs-2.5.dmg" do
  app "Aquamacs"
  volumes_dir "Aquamacs Emacs"
  dmg_name "Aquamacs-Emacs-2.5"
  source "http://ims-chef.wesleyan.edu/os_x/aquamacs_emacs/Aquamacs-Emacs-2.5.dmg"
  checksum "5857848d8d46bba43d160c02393b098a370e2156608be24b288419f668210be9"
  action :install
  type "app"
  package_id "org.aquamacs.emacs"
  version "2.5.0"
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
