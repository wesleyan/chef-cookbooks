#
# Cookbook Name:: rstudio
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "RStudio-0.96.331.dmg" do
  app "RStudio"
  volumes_dir "RStudio-0.96.331"
  dmg_name "RStudio-0.96.331"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/rstudio-0/RStudio-0.96.331.dmg"
  checksum "118bf97dcc4640b77add79d97df8c3c9a0eadb1bfe4d14403b8b5bda03755121"
  action :install
  type "app"
end