#
# Cookbook Name:: adobe_flash_player
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
#
# Flash is packaged with IE in Windows 8, so the Active X installer is not needed.
windows_package "Adobe Flash Player (for plugin-based browsers)" do
  source "http://ims-chef.wesleyan.edu/windows/adobe_flash_player/adobe_flash_player-11.9.900.117.msi"
  checksum "4f873edac6231f12545acdcf084dd0889cf65b7457444b8a9cab210aec434033"
  version "11.9.900117"
end

# Create directory for mms.cfg
directory "C:\\Windows\\SysWOW64\\Macromed\\Flash" do
  recursive true
  action :create
end

# Seed file that disables automatic updates.
cookbook_file "C:\\Windows\\SysWOW64\\Macromed\\Flash\\mms.cfg"