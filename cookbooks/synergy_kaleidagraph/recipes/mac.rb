#
# Cookbook Name:: synergy_kaleidagraph
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "Synergy KaleidaGraph" do
  app "KaleidaGraph"
  volumes_dir "KaleidaGraph"
  dmg_name "kaleidagraph-4.1.3"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/synergy_kaleidagraph/kaleidagraph-4.1.3.dmg"
  checksum "e501994fc852bb04d505e52fd173d12950f200d94f33f0a78fbd91f841b3fb02"
  action :install
  type "pkg"
  package_id "com.synergy.kaleidagraph"
  version "4.1.3"
end