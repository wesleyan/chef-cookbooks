#
# Cookbook Name:: osxupdate
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install Combo Update
#dmg_package "OSXUpdCombo10.8.2.dmg" do
#  app "OSXUpdCombo10.8.2"
#  volumes_dir "OS X 10.8.2 Update Combo"
#  dmg_name "OSXUpdCombo10.8.2"
#  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/os_x_updates-10.8/OSXUpdCombo10.8.2.dmg"
#  checksum "60641d639510b7c747a22d7ec87317251c9fa3702e31a266c48609219b821bd2"
#  action :install
#  type "pkg"
#  package_id "com.apple.pkg.update.os.10.8.2.12C60.combo"
#end

# Install 10.8.2 variant update for new 2012 hardware
dmg_package "OSXUpd10.8.2.dmg" do
  app "OSXUpd10.8.2"
  volumes_dir "OS X 10.8.2 Update"
  dmg_name "OSXUpd10.8.2"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/os_x_updates-10.8/OSXUpd10.8.2.dmg"
  checksum "89942e5886ea55e3b62d010b80ee996c5425c3411c3cb20493078aebe62f896c"
  action :install
  type "pkg"
  package_id ""
end