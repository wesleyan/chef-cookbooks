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
  dmg_name "EndNoteX7SiteInstaller"
  source "http://ims-chef.wesleyan.edu/os_x/thomson_reuters_endnote/EndNoteX7SiteInstaller.dmg"
  checksum "ca4441db0535e768d4060fee5454463de60c773de141ebc31d2289882ca927d8"
  action :install
  type "dir"
  package_id "com.endnote.x7"
  version "17.0.0"
end