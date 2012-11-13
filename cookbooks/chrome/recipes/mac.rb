#
# Cookbook Name:: chrome
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install Chrome
dmg_package "googlechrome.dmg" do
  app "Google Chrome"
  volumes_dir "Google Chrome"
  dmg_name "googlechrome"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/google_chrome-23/googlechrome.dmg"
  checksum "7118c978960cb343d2e16463a557ecbd72fc0f30e2f0bd5864dfa596358e17d3"
  action :install
  type "app"
end
