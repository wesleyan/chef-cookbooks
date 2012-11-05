#
# Cookbook Name:: dreamweaver
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "adobe_dreamweaver_cs6-12.0.1_Install.dmg" do
  app "adobe_dreamweaver_cs6-12.0.1_Install"
  volumes_dir "adobe_dreamweaver_cs6-12.0.1_Install"
  dmg_name "adobe_dreamweaver_cs6-12.0.1_Install"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/adobe_dreamweaver-cs6/adobe_dreamweaver_cs6-12.0.1_Install.dmg"
  checksum "eaef6b9bbd490f86e0fb78027079748a61801d1e46ce74b2ea57ed016ccaf350"
  action :install
  type "pkg"
  package_id "com.adobe.Enterprise.install.7BA62E33-4CBD-48AC-940F-9EACF5CCA5C9"
end

# Download icon
cookbook_file "/tmp/adobe.png"

# Create dock folder, if it does not exist
dock_add "Adobe Creative Suite 6" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
  icon "/tmp/adobe.png"
end

# Add icon to dock
dock_add "/Applications/Adobe Dreamweaver CS6/Adobe Dreamweaver CS6.app" do
  all_users true
  group "Adobe Creative Suite 6"
# restart true
end
