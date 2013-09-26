#
# Cookbook Name:: videon_vlc
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
windows_package "VideoLAN VLC" do
  source "http://ims-chef.wesleyan.edu/windows/videolan_vlc/vlc-2.1.0-win32.exe"
  version "2.1.0"
end