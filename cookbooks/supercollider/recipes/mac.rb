#
# Cookbook Name:: supercollider
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Standard release, installed in the osx-cfa role
dmg_package "SuperCollider" do
  app "SuperCollider"
  volumes_dir "SuperCollider"
  dmg_name "SuperCollider-3.6.3-OSX-universal"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/supercollider/SuperCollider-3.6.3-OSX-universal.dmg"
  checksum "6c58057e46484ff4860bc46d2ab4f273fad83b9ec431213abe5bd9ecaa211c8a"
  action :install
  type "dir"
  package_id "net.sourceforge.supercollider"
  version "3.6.3"
  not_if { node["SuperCollider"]["No-IDE"] }
end

# No-IDE release, installed in the osx-nsm role
dmg_package "SuperCollider No-IDE" do
  app "SuperCollider"
  volumes_dir "SuperCollider"
  dmg_name "SuperCollider-3.6.3-OSX-universal-no-ide"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/supercollider/SuperCollider-3.6.3-OSX-universal-no-ide.dmg"
  checksum "a0e6af4766b1d68e8e1ae07718d1a44d7857036906a5bd3438c8e3bfb870a0dc"
  action :install
  type "dir"
  package_id "net.sourceforge.supercollider.no-ide"
  version "3.6.3"
  only_if { node["SuperCollider"]["No-IDE"] }
end