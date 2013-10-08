#
# Cookbook Name:: esri_arcgis
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "Esri ArcGIS" do
  source "http://ims-chef.wesleyan.edu/windows/esri_arcgis/ArcGIS_Desktop_102_135736.msi"
  checksum "b5767851d9df72eb0bfe084b09fcddf1bb83b079dab9d31c0f93d8f1faf25e26"
  version "10.2.135736"
  installer_type :custom
  options "ADDLOCAL=ALL ESRI_LICENSE_HOST=fozzy.wesleyan.edu SOFTWARE_CLASS=Editor /qn"
end
