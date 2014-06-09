#
# Cookbook Name:: makemusic_finale
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our pkg.
dmg_package "Finale 2014" do
  app "Install Finale 2014a"
  volumes_dir "Finale2014a"
  dmg_name "Finale2014aMacFull"
  source "http://sw.wesleyan.edu/os_x/makemusic_finale/Finale2014aMacFull.dmg"
  checksum "c0de56e937ee398c3931954935c08bee5f9f9184834384cc3e93c4fa97ad4e78"
  action :install
  type "pkg"
  package_id "com.makemusic.pkg.Finale18.AppCoreInstaller2014.1.3627.0"
end

# Create dock folder, if it does not exist
dock_add "Center for the Arts" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add to dock
dock_add "/Applications/Finale 2012.app" do
  all_users true
  group "Center for the Arts"
end