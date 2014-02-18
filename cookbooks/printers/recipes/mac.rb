#
# Cookbook Name:: printers
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

# Install Epson drivers
dmg_package "EPSON Printer Drivers" do
  app "EPSONPrinterDrivers"
  volumes_dir "EPSON Printer Drivers"
  dmg_name "EPSONPrinterDrivers2.15"
  source "http://ims-chef.wesleyan.edu/os_x/epson_printer/EPSONPrinterDrivers2.15.dmg"
  checksum "f9f5658ff11b9933b9f777c15a1d433dfdb1c3131693fb8e0382a5372ba293b6"
  action :install
  type "pkg"
  package_id "com.apple.pkg.EPSONPrinterDrivers"
  version "2.15.0"
end

#install Pharos drivers
dmg_package "Pharos Popup Printer Client" do
  app "Popup"
  volumes_dir "Popup"
  dmg_name "pharos_client_labs-8.4.1"
  source "http://ims-chef.wesleyan.edu/os_x/pharos_printer/pharos_client_labs-8.4.1.dmg"
  checksum "dd25cb018bc251bc9a749508c8596f6406fa850d0bab12c473530fbabcec8bf0"
  action :install
  type "pkg"
  package_id "com.pharos.popup"
  version "8.4.1"
end

dmg_package "Epson 3880 Driver" do
  app "Epson3880"
  volumes_dir "Epson"
  dmg_name "Epson"
  type "mpkg"
  source "http://ims-chef.wesleyan.edu/os_x/epson_printer/Epson.dmg"
  checksum "b620b0761a4ad1a5aa6a38124716aede665e6429e8d5b154cb5bb2d467eef247"
  action :install
  package_id "com.epson.drivers.3880"
  version "1.0.0"
end

dmg_package "Epson 9800 Driver" do
  app "Epson9800"
  volumes_dir "Epson"
  dmg_name "Epson"
  type "mpkg"
  source "http://ims-chef.wesleyan.edu/os_x/epson_printer/Epson.dmg"
  checksum "b620b0761a4ad1a5aa6a38124716aede665e6429e8d5b154cb5bb2d467eef247"
  action :install
  package_id "com.epson.drivers.9800"
  version "1.0.0"
end

printers "Printers" do
  action :set_default
end
