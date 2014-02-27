#
# Cookbook Name:: videon_vlc
# Recipe:: win
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
windows_package "VideoLAN VLC" do
  source "http://ims-chef.wesleyan.edu/windows/videolan_vlc/vlc-2.1.2-win32.exe"
  version "2.1.2"
end