#
# Cookbook Name:: benvista_photozoom_pro
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Copy our .app
dmg_package "BenVista PhotoZoom Pro" do
  app "PhotoZoom Pro 5"
  volumes_dir "PhotoZoom Pro 5.1.2"
  dmg_name "PhotoZoomPro5"
  source "http://ims-chef.wesleyan.edu/os_x/benvista_photozoom_pro/PhotoZoomPro5.dmg"
  checksum "a4c1fe45822e013b3ff904463f7eb01fc5d75c6124c68b6f3e9e560aa997fade"
  action :install
  unmount false
  type "app"
  package_id "com.benvista.photozoompro"
  version "5.1.2"
end

# Install Photoshop plug-in.
dmg_package "BenVista PhotoZoom Pro Photoshop Plug-in" do
  app "PhotoZoom Pro 5.plugin"
  volumes_dir "PhotoZoom Pro 5.1.2"
  dmg_name "PhotoZoomPro5"
  source "http://ims-chef.wesleyan.edu/os_x/benvista_photozoom_pro/PhotoZoomPro5.dmg"
  checksum "a4c1fe45822e013b3ff904463f7eb01fc5d75c6124c68b6f3e9e560aa997fade"
  action :install
  destination "/Applications/Adobe Photoshop CS6/Plug-ins/"
  type "dir"
  unmount true
  package_id "com.benvista.photozoompro.plugin"
  version "5.1.2"
end

# Drop preferences file into default user profile, contains licensing.
default_profile "PhotoZoom Pro 5 Preferences" do
  path "Library/Preferences"
  cookbook 'benvista_photozoom_pro'
end
