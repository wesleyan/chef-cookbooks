#
# Cookbook Name:: flashpro
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "adobe_flash_professional_cs6-12.0.2_Install.dmg" do
  app "adobe_flash_professional_cs6-12.0.2_Install"
  volumes_dir "adobe_flash_professional_cs6-12.0.2_Install"
  dmg_name "adobe_flash_professional_cs6-12.0.2_Install"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/adobe_flash_professional-cs6/adobe_flash_professional_cs6-12.0.2_Install.dmg"
  checksum "d9045eb09d8cc9dfee5f1feeb15fffc94bb8a83f749b531cd0249758beeb056c"
  action :install
  type "pkg"
  package_id "com.adobe.Enterprise.install.C2267962-3047-468F-A7C9-141015421170"
end