#
# Cookbook Name:: makemusic_finale
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install Finale
# Note: The .mpkg actually connects to MakeMusic's servers and downloads the software directly.  Pretty strange.
dmg_package "Finale 2012" do
  app "InstallFinale"
  volumes_dir "InstallFinale"
  dmg_name "Finale2012aMacFull"
  source "http://ims-chef.wesleyan.edu/os_x/makemusic_finale/Finale2012aMacFull.dmg"
  checksum "c0addb12e0e6e2498b922b241b8154f59b4dd30be0edd157c3cc973ff49a4c04"
  action :install
  type "mpkg"
  package_id "com.makemusic.pkg.Finale2012.AppCore"
  version "2012.3.10"
end

# Install Finale updates
dmg_package "Finale 2012c Update" do
  app "UpdateFinale"
  volumes_dir "Finale2012c"
  dmg_name "Finale2012cMacUpdater"
  source "http://ims-chef.wesleyan.edu/os_x/makemusic_finale/Finale2012cMacUpdater.dmg"
  checksum "054e0601f1190ca2ed972cd823d0fd9fc38928e8db2edf5855b4d8d86ea2516e"
  action :install
  type "pkg"
  package_id "com.makemusic.pkg.Finale2012.AppCoreUpdater2012c.r13.3"
  version "2012.3.13"
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