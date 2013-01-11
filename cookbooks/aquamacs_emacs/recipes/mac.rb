#
# Cookbook Name:: aquamacs
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "Aquamacs-Emacs-2.4.dmg" do
  app "Aquamacs"
  volumes_dir "Aquamacs Emacs"
  dmg_name "Aquamacs-Emacs-2.4"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/aquamacs_emacs/Aquamacs-Emacs-2.4.dmg"
  checksum "ca4e855e1edc5fd45b8a4f113ace07e8b0e2be67ecb6a3830b71c0acc067ae1d"
  action :install
  type "app"
end