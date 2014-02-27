#
# Cookbook Name:: apple_osx_updates
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
#
# Install 10.8.5 update, combo as our base has is currently 10.8.3 until I roll a new base.
dmg_package "OS X Update" do
  app "OSXUpdCombo10.8.5"
  volumes_dir "OS X 10.8.5 Update Combo"
  dmg_name "OSXUpdCombo10.8.5"
  source "http://ims-chef.wesleyan.edu/os_x/apple_osx_updates/OSXUpdCombo10.8.5.dmg"
  checksum "1c0f6eef4469313fead1bd6aaf49ffb62aa82e2ab4ebe1b409ff295d121c07ff"
  action :install
  type "pkg"
  package_id "com.apple.pkg.update.os.10.8.5.12F37.combo"
  restart true
end

# Install 10.8.5 Supplemental update.
dmg_package "OS X Supplemental Update" do
  app "OSXUpd10.8.5Supp"
  volumes_dir "OS X v10.8.5 Supplemental Update"
  dmg_name "OSXUpd10.8.5Supp"
  source "http://ims-chef.wesleyan.edu/os_x/apple_osx_updates/OSXUpd10.8.5Supp.dmg"
  checksum "8f84c8d77207b16568932503f4d28437422ad686e54fc37cbede4227753a3fd5"
  action :install
  type "pkg"
  package_id "com.apple.pkg.update.os.10.8.5.supplemental"
  restart true
end

# Install current security update package.
dmg_package "OS X Security Update" do
  app "SecUpd2014-001"
  volumes_dir "Security Update 2014-001"
  dmg_name "SecUpd2014-001"
  source "http://ims-chef.wesleyan.edu/os_x/apple_osx_updates/SecUpd2014-001.dmg"
  checksum "83bf2b14f278525823af316139fab90019cfab6411b0b29f732a3da38897d2fa"
  action :install
  type "pkg"
  package_id "com.apple.pkg.update.security.10.8.5.12F1026.2014.001"
end