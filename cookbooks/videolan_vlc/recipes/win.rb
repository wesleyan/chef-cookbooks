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
  source "http://ims-chef.wesleyan.edu/windows/videolan_vlc/vlc-2.0.7-win32.exe"
  version "2.0.7"
end