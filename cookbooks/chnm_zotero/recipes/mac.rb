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
