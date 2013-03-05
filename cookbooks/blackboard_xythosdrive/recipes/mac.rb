#
# Cookbook Name:: blackboard_xythosdrive
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "Blackboard XythosDrive" do
  app "Xythos Drive"
  volumes_dir "Xythos Drive for Mac"
  dmg_name "XythosDrive_1.6.15324_wes_lab"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/blackboard_xythosdrive/XythosDrive_1.6.15324_wes_lab.dmg"
  checksum "3e0a4b35ed58d491e8945056b737bcf34ad79e7c1c5fcadae94b48f997c52a9b"
  action :install
  type "pkg"
  package_id "com.xythos.drive.xdcore.pkg"
  version "1.6.15324"
end