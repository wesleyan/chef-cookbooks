#
# Cookbook Name:: turning_technologies_turningpoint
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our .app
dmg_package "TurningPoint" do
  app "TurningPoint"
  volumes_dir "TurningPoint"
  dmg_name "TurningPoint-5.2.1"
  source "http://ims-chef.wesleyan.edu/os_x/turning_technologies_turningpoint/TurningPoint-5.2.1.dmg"
  checksum "c2dc2d4563931cd80d8917a2167b193b382806fbb66c810f333cb50a162c6892"
  action :install
  type "app"
  package_id "com.turningtechnologies.turningpoint"
  version "5.2.1"
end
