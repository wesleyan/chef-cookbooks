#
# Cookbook Name:: blackmagic_desktop_video
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install the package
dmg_package "Blackmagic Desktop Video" do
  app "Desktop Video Installer 9.7.7"
  volumes_dir "Desktop Video Installer"
  dmg_name "DesktopVideo_9.7.7"
  source "http://ims-chef.wesleyan.edu/os_x/blackmagic_desktop_video/DesktopVideo_9.7.7.dmg"
  checksum "a24b67e5f42b4718e93ca964a55ede84c85df738b36a61795478710c9aeda51c"
  action :install
  type "pkg"
  package_id "com.blackmagic-design.DesktopVideo"
  version "9.7.7"
end