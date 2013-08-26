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
  dmg_name "Zotero-4.0.10.1"
  source "http://ims-chef.wesleyan.edu/os_x/chnm_zotero/Zotero-4.0.10.1.dmg"
  checksum "d8509971545730e7441d7d9bcd1b166cf1a108f703a94c793e32fcd7f15427b8"
  action :install
  type "app"
  package_id "edu.gmu.chnm.zotero"
  version "4.0.10"
end

dmg_package "Zotero Browser Plugins" do
  app "Zotero Plugins"
  volumes_dir "Zotero Plugins"
  source "http://ims-chef.wesleyan.edu/os_x/chnm_zotero/Zotero Plugins1.dmg"
  checksum "0a9ee7206c425b284fd924c68d1245227ea3e50c6937846c96092094aae882f7"
  action :install
  type "pkg"
  package_id "edu.gmu.chnm.zotero.plugins"
  version "4.0.82"
end

# Install Firefox add-on, current version 4.0.10
directory "/Applications/Firefox.app/Contents/MacOS/extensions"
cookbook_file "/Applications/Firefox.app/Contents/MacOS/extensions/zotero@chnm.gmu.edu.xpi" do
  mode 0777
end

directory "/Applications/Firefox.app/Contents/MacOS/defaults"
directory "/Applications/Firefox.app/Contents/MacOS/defaults/preferences"
cookbook_file "/Applications/Firefox.app/Contents/MacOS/defaults/preferences/scopes.js" do
  mode 0644
end
