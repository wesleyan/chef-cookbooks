#
# Cookbook Name:: rstudio
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "RStudio-0.97.248.dmg" do
  app "RStudio"
  volumes_dir "RStudio-0.97.248"
  dmg_name "RStudio-0.97.248"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/rstudio/RStudio-0.97.248.dmg"
  checksum "4798f664ebf7d24f9c211001b0673e96d1a54e0b0f87217e9665a8427ceda71c"
  action :install
  type "app"
end