#
# Cookbook Name:: adobe_flash_player
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

# Flash is packaged with IE in Windows 8, so the Active X installer is not needed.

windows_package "Adobe Flash Player (for non-IE)" do
  source "http://ims-chef.wesleyan.edu/windows/adobe_flash_player/install_flash_player_11_plugin.msi"
  checksum "1291984b96927c3115740456cae008eaa660b232b13bafca8277e301f015b824"
  version "11.8.80094"
end

# Create directory for mms.cfg
directory "C:\\Windows\\SysWOW64\\Macromed\\Flash" do
  recursive true
  action :create
end

# Seed file that disables automatic updates.
cookbook_file "C:\\Windows\\SysWOW64\\Macromed\\Flash\\mms.cfg"