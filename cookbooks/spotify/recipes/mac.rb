#
# Cookbook Name:: spotify
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our .app
dmg_package "Spotify" do
  app "Spotify"
  volumes_dir "Spotify"
  dmg_name "Spotify-0.9.1.57"
  source "http://ims-chef.wesleyan.edu/os_x/spotify/Spotify-0.9.1.57.dmg"
  checksum "068a04c4ec99104e9d2814c302e31f328dc5ed7ff685507fdddc17822b44e003"
  action :install
  type "app"
  package_id "com.spotify.spotifyapp"
  version "0.9.157"
end
