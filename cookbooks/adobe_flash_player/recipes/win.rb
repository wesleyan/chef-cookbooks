#
# Cookbook Name:: adobe_flash_player
# Recipe:: win
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
#
# Flash is packaged with IE in Windows 8, so the Active X installer is not needed.
windows_package "Adobe Flash Player (for plugin-based browsers)" do
  source "http://sw.wesleyan.edu/windows/adobe_flash_player/adobeflashplayer-13.0.0.214.msi"
  checksum "3adf8ae8383ee5ff4ae5ddbb9e51bf186f27eb5c8fb3f0a35e00a8e26030cd1c"
  version "13.0.0214"
end

# Create directory for mms.cfg
directory "C:\\Windows\\SysWOW64\\Macromed\\Flash" do
  recursive true
  action :create
end

# Seed file that disables automatic updates.
cookbook_file "C:\\Windows\\SysWOW64\\Macromed\\Flash\\mms.cfg"