#
# Cookbook Name:: aftereffects
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "adobe_after_effects_cs6-11.0.2_Install.dmg" do
  app "adobe_after_effects_cs6-11.0.2_Install"
  volumes_dir "adobe_after_effects_cs6-11.0.2_Install"
  dmg_name "adobe_after_effects_cs6-11.0.2_Install"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/adobe_after_effects-cs6/adobe_after_effects_cs6-11.0.2_Install.dmg"
  checksum "b9fea3f42b207d59bd84138aef972670bd4ff29a05b6a18dbe3b7c920ca84113"
  action :install
  type "pkg"
  package_id "com.adobe.Enterprise.install.E771578B-4201-48DD-A429-742EF35760F6"
end

dock_add "Adobe Creative Suite 6" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

dock_add "/Applications/Adobe After Effects CS6/Adobe After Effects CS6.app" do
  all_users true
  group "Adobe Creative Suite 6"
  restart true
end
