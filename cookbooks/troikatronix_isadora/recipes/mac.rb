#
# Cookbook Name:: troikatronix_isadora
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install Isadora
dmg_package "Troikatronix Isadora" do
  app "Isadora Core Sassafras Installer"
  volumes_dir "Isadora Core Sassafras Installer"
  dmg_name "isadora-1.3.0f24-k2"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/troikatronix_isadora/isadora-1.3.0f24-k2.dmg"
  checksum "4d5e0197c8b3b7557987fde3a820a5a97fa3d48d748d9f03c146fa3f15e04b46"
  action :install
  type "pkg"
  package_id "com.troikatronix.isadora-core-sassafras.application"
  version "1.30f26"
end

# Install FreeFrame plugins
dmg_package "FreeFrame plugins for Isadora" do
  app "FreeFrame Installer"
  volumes_dir "FreeFrame Plugins (UB)"
  dmg_name "petes-plugins-ub"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/troikatronix_isadora/petes-plugins-ub.dmg"
  checksum "2a10f627934f3818ea739633d2d92193145ecc6bf4c2d0c68cae7d1322a25375"
  action :install
  type "pkg"
  package_id "com.troikatronix.freeframeub"
  version "1.2"
end