#
# Cookbook Name:: thomson_reuters_endnote
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install the .app
dmg_package "Thomson Reuters EndNote" do
  app "EndNote X7"
  volumes_dir "EndNote X7 Installer"
  dmg_name "EndNoteX7Installer"
  source "http://ims-chef.wesleyan.edu/os_x/thomson_reuters_endnote/EndNoteX7Installer.dmg"
  checksum "b071c542519a23362f6efa554cd47ab734ab8b1ef067ef061a95ecfde670bd51"
  action :install
  type "dir"
  package_id "com.endnote"
  version "17.0.0"
end