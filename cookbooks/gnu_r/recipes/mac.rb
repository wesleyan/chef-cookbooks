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

%w{ RCurl twitteR doBy mvtnorm plyr stringr ggplot2 XML tm wordcloud lme4 nlme e1071 nnet
  descr reshape foreign class Ecdat psych DAAG lmtest perturb MEMSS mlmRev car ape ade4 }.each do |r_pkg|
  gnu_r_packages r_pkg
end

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

