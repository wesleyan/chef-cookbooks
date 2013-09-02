#
# Cookbook Name:: supercollider
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Standard release, installed in the osx-cfa role
dmg_package "SuperCollider" do
  app "SuperCollider"
  volumes_dir "SuperCollider"
  dmg_name "SuperCollider-3.6.5-OSX-universal"
  source "http://ims-chef.wesleyan.edu/os_x/supercollider/SuperCollider-3.6.5-OSX-universal.dmg"
  checksum "3a942aed9d28071bd8354b387d1e436205a1c21f55667e17689d9b361af3409b"
  action :install
  type "dir"
  package_id "net.sourceforge.supercollider"
  version "3.6.5"
  not_if { node["SuperCollider"]["No-IDE"] }
end

# No-IDE release, installed in the osx-nsm role
dmg_package "SuperCollider No-IDE" do
  app "SuperCollider"
  volumes_dir "SuperCollider"
  dmg_name "SuperCollider-3.6.5-OSX-universal-no-ide"
  source "http://ims-chef.wesleyan.edu/os_x/supercollider/SuperCollider-3.6.5-OSX-universal-no-ide.dmg"
  checksum "de3303c6ff62a64098174ec4029ef2a3691b2b39b56e0b4d1e10c1f6de3ca53b"
  action :install
  type "dir"
  package_id "net.sourceforge.supercollider.no-ide"
  version "3.6.5"
  only_if { node["SuperCollider"]["No-IDE"] }
end