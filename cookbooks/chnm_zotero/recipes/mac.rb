#
# Cookbook Name:: chnm_zotero
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our .app!
dmg_package "Zotero-3.0.11.1.dmg" do
  app "Zotero"
  volumes_dir "Zotero"
  dmg_name "Zotero-3.0.11.1"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/chnm_zotero/Zotero-3.0.11.1.dmg"
  checksum "4ecd7518ce04bf5d1010765e94f7c7ed2908771cd1a3cd1787af36fb0f5b0175"
  action :install
  type "app"
end
