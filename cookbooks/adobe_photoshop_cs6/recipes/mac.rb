#
# Cookbook Name:: adobe_photoshop_cs6
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "adobe_photoshop_cs6-13.0.3.dmg" do
  app "adobe_photoshop_cs6_Install"
  volumes_dir "adobe_photoshop_cs6-13.0.3"
  dmg_name "adobe_photoshop_cs6-13.0.3"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/adobe_photoshop_cs6/adobe_photoshop_cs6-13.0.3.dmg"
  checksum "6ff0fd4c9649752f474ad5ddfa513c99b9680056e9aa299be3c8120bd3fd6037"
  action :install
  type "pkg"
  package_id "com.adobe.Enterprise.install.A6A953A3-576E-444D-8E18-4C99E80DB15C"
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
dock_add "/Applications/Adobe Photoshop CS6/Adobe Photoshop CS6.app" do
  all_users true
  group "Adobe Creative Suite 6"
#  restart true
end
