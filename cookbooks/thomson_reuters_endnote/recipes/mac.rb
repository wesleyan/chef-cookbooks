#
# Cookbook Name:: thomson_reuters_endnote
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install the .app
dmg_package "Thomson Reuters EndNote X7" do
  app "EndNote X7"
  volumes_dir "EndNote X7 Installer"
  dmg_name "endnote_x7_site-17.0.1"
  source "http://ims-chef.wesleyan.edu/os_x/thomson_reuters_endnote/endnote_x7_site-17.0.1.dmg"
  checksum "ca4441db0535e768d4060fee5454463de60c773de141ebc31d2289882ca927d8"
  action :install
  type "dir"
  package_id "com.endnote.x7"
  version "17.0.1"
end

# Install custom pkg that includes Word plugin
dmg_package "Thomson Reuters EndNote X7 Extras" do
  app "EndNote X7 Extras"
  volumes_dir "EndNote X7 Extras"
  dmg_name "endnote_x7_extras"
  source "http://ims-chef.wesleyan.edu/os_x/thomson_reuters_endnote/endnote_x7_extras.dmg"
  checksum "4a7351d6c7b6d1b0afde6101a2b3fcb0d660083a4d785d1905470e1bde88fdf7"
  action :install
  type "pkg"
  package_id "com.endnote.x7.extras"
  version "17.0.1"
end