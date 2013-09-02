#
# Cookbook Name:: autodock_vina
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Copy our directory.
dmg_package "AutoDock Vina" do
  app "AutoDock Vina"
  volumes_dir "AutoDock Vina"
  dmg_name "autodock_vina-1.1.2"
  source "http://ims-chef.wesleyan.edu/os_x/autodock_vina/autodock_vina-1.1.2.dmg"
  checksum "cff17ec9302a82e374a073ca04125a28440e9b6f1393a763bc74fd7571edc1d7"
  action :install
  type "dir"
  package_id "edu.scripps.autodock.vina"
  version "1.1.2"
end
