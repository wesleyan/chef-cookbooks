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

# Install extra packages using R's commandline package installer
gnu_r_packages "RCurl" do
  action :osx_install
end
gnu_r_packages "twitteR" do
  action :osx_install
end
gnu_r_packages "doBy" do
  action :osx_install
end
gnu_r_packages "mvtnorm" do
  action :osx_install
end
gnu_r_packages "plyr" do
  action :osx_install
end
gnu_r_packages "stringr" do
  action :osx_install
end
gnu_r_packages "ggplot2" do
  action :osx_install
end
gnu_r_packages "XML" do
  action :osx_install
end
gnu_r_packages "tm" do
  action :osx_install
end
gnu_r_packages "wordcloud" do
  action :osx_install
end
gnu_r_packages "lme4" do
  action :osx_install
end
gnu_r_packages "nlme" do
  action :osx_install
end
gnu_r_packages "e1071" do
  action :osx_install
end
gnu_r_packages "nnet" do
  action :osx_install
end
gnu_r_packages "descr" do
  action :osx_install
end
gnu_r_packages "reshape" do
  action :osx_install
end
gnu_r_packages "foreign" do
  action :osx_install
end
gnu_r_packages "class" do
  action :osx_install
end
gnu_r_packages "Ecdat" do
  action :osx_install
end
gnu_r_packages "Psych" do
  action :osx_install
end
gnu_r_packages "DAAG" do
  action :osx_install
end
gnu_r_packages "lmtest" do
  action :osx_install
end
gnu_r_packages "perturb" do
  action :osx_install
end
gnu_r_packages "MEMSS" do
  action :osx_install
end
gnu_r_packages "mlmRev" do
  action :osx_install
end
gnu_r_packages "car" do
  action :osx_install
end
gnu_r_packages "ape" do
  action :osx_install
end
gnu_r_packages "ade4" do
  action :osx_install
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

