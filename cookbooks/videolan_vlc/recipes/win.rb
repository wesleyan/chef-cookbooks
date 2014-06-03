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
  source "http://ims-chef.wesleyan.edu/windows/videolan_vlc/vlc-2.1.4-win64.exe"
  checksum "57e0725b34d3647fb0dbbea80cb1b8808a89917458518fe5e8cddec144504744"
  version "2.1.4"
end