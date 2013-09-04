#
# Cookbook Name:: evernote
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

dmg_package "Adobe Flash Professional CS6" do
  app "Evernote"
  volumes_dir "Evernote"
  dmg_name "Evernote_401587"
  source "http://ims-chef.wesleyan.edu/os_x/evernote_evernote/Evernote_401587.dmg"
  checksum "aa477ba2ee3e71dbd7967fbcd32effda01b5fa9e195ca6eb60de84421dfd8fe7"
  type "app"
  package_id "com.evernote.evernote"
  version "5.2.1"
end
