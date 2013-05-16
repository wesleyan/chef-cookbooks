#
# Cookbook Name:: rstudio
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "RStudio" do
  app "RStudio"
  volumes_dir "RStudio-0.97.336"
  dmg_name "RStudio-0.97.336"
  source "http://ims-chef.wesleyan.edu/os_x/rstudio/RStudio-0.97.336.dmg"
  checksum "a197593df6fe7f81e13e6ae07ea633e4346b99f878e1d359b535edc61f940fb2"
  action :install
  type "app"
  package_id "com.rstudio.rstudio.ide"
  version "0.97.336"
end