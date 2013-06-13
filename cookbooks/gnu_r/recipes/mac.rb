#
# Cookbook Name:: gnu_r
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "R" do
  app "R-3.0.1"
  volumes_dir "R-3.0.1"
  dmg_name "R-3.0.1"
  source "http://ims-chef.wesleyan.edu/os_x/gnu_r/R-3.0.1.dmg"
  checksum "33311735156d113119bf6dce96ae4ab90d775418ae6085c0f78f517c752df7d9"
  action :install
  type "pkg"
  package_id "org.r-project.R.x86_64.fw.pkg"
  version "3.0.1"
end

gnu_r_packages "RCurl"
gnu_r_packages "twitteR"
gnu_r_packages "doBy"
gnu_r_packages "mvtnorm"
gnu_r_packages "plyr"
gnu_r_packages "stringr"
gnu_r_packages "ggplot2"
gnu_r_packages "XML"
gnu_r_packages "tm"
gnu_r_packages "wordcloud"
gnu_r_packages "lme4"
gnu_r_packages "nlme"
gnu_r_packages "e1071"
gnu_r_packages "nnet"
gnu_r_packages "descr"
gnu_r_packages "reshape"
gnu_r_packages "foreign"
gnu_r_packages "class"
gnu_r_packages "Ecdat"
gnu_r_packages "Psych"
gnu_r_packages "DAAG"
gnu_r_packages "lmtest"
gnu_r_packages "perturb"
gnu_r_packages "MEMSS"
gnu_r_packages "mlmRev"
gnu_r_packages "car"
gnu_r_packages "ape"
gnu_r_packages "ade4"

gnu_r_packages "update" do
	action :update
end

# Create dock folder, if it does not exist
dock_add "Social Sciences" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add icon to dock
dock_add "/Applications/R.app" do
  all_users true
  group "Social Sciences"
end








