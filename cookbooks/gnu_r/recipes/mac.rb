#
# Cookbook Name:: gnu_r
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our base package.
dmg_package "R" do
  app "R-3.0.2"
  volumes_dir "R-3.0.2"
  dmg_name "R-3.0.2"
  source "http://ims-chef.wesleyan.edu/os_x/gnu_r/R-3.0.2.dmg"
  checksum "b157709479d4f285f0978e85938b042bbebbf503c0d76b417a06c571e14bac9c"
  action :install
  type "pkg"
  package_id "org.r-project.R.x86_64.fw.pkg"
  version "3.0.2"
end

%w{ RCurl twitteR doBy mvtnorm plyr stringr ggplot2 XML tm wordcloud lme4 nlme e1071 nnet
  descr reshape foreign class Ecdat psych DAAG lmtest perturb MEMSS mlmRev car ape ade4 }.each do |r_pkg|
  gnu_r_packages r_pkg do
    action :osx_install
  end
end

# Update our installed packages, if available.
gnu_r_packages "update" do
	action :osx_update
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

