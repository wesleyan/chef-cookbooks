#
# Cookbook Name:: chnm_zotero
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our .app!
dmg_package "Zotero" do
  app "Zotero"
  volumes_dir "Zotero"
  dmg_name "Zotero-4.0.5"
  source "http://ims-chef.wesleyan.edu/os_x/chnm_zotero/Zotero-4.0.5.dmg"
  checksum "d8509971545730e7441d7d9bcd1b166cf1a108f703a94c793e32fcd7f15427b8"
  action :install
  type "app"
  package_id "edu.gmu.chnm.zotero"
  version "4.0.5"
end

dmg_package "Zotero Browser Plugins" do
  app "Zotero Plugins"
  volumes_dir "Zotero Plugins"
  source "http://ims-chef.wesleyan.edu/os_x/chnm_zotero/Zotero-Plugins.dmg"
  checksum "5c17e5d51bf91149157a43f082f39df5a46b19c4ab107485cef054272d447d3f"
  action :install
  type "pkg"
  package_id "edu.gmu.chnm.zotero.plugins"
  version "3.0.8.1"
end

# Install Firefox add-on, current version 4.0.5
directory "/Applications/Firefox.app/Contents/MacOS/extensions"
cookbook_file "/Applications/Firefox.app/Contents/MacOS/extensions/zotero@chnm.gmu.edu.xpi" do
  mode 0777
end

directory "/Applications/Firefox.app/Contents/MacOS/defaults"
directory "/Applications/Firefox.app/Contents/MacOS/defaults/preferences"
cookbook_file "/Applications/Firefox.app/Contents/MacOS/defaults/preferences/scopes.js" do
  mode 0644
end
