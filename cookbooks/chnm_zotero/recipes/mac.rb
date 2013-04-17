#
# Cookbook Name:: chnm_zotero
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our .app!
dmg_package "Zotero-4.0.4.dmg" do
  app "Zotero"
  volumes_dir "Zotero"
  dmg_name "Zotero-4.0.4"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/chnm_zotero/Zotero-4.0.4.dmg"
  checksum "79e7056c66bd4f791a22ef067c2ad9492f1fa280f3de06ace0f240059eb5099f"
  action :install
  type "app"
  package_id "edu.gmu.chnm.zotero"
  version "4.0.4"
end

dmg_package "Zotero Browser Plugins" do
  app "Zotero Plugins"
  volumes_dir "Zotero Plugins"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/chnm_zotero/Zotero-Plugins.dmg"
  checksum "de27691c8986d60ffdb7f79cd637512eeb045a1ea5f0e9a8e92c578a51cfcb3b"
  action :install
  type "pkg"
  package_id "edu.gmu.chnm.zotero.plugins"
  version "4.0.4"
end

cookbook_file "/Applications/Firefox.app/Contents/MacOS/extensions/zotero@chnm.gmu.edu.xpi" do
  mode 0777
end

directory "/Applications/Firefox.app/Contents/MacOS/defaults/preferences"
cookbook_file "/Applications/Firefox.app/Contents/MacOS/defaults/preferences/scopes.js" do
  mode 0666
end

cookbook_file "/Applications/Firefox.app/Contents/MacOS/override.ini" do
  mode 0666
end