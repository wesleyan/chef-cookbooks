#
# Cookbook Name:: printers
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "HewlettPackardPrint2.12.dmg" do
  app "HewlettPackardPrinterDrivers"
  volumes_dir "HewlettPackard Printer Drivers"
  dmg_name "HewlettPackardPrint2.12"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/hp_printer_driver-2/HewlettPackardPrint2.12.dmg"
  checksum "43b7a5959366b216e52be9aadbdcefa3d6c63706aaf6983c0743b1ba68e0b749"
  action :install
  type "pkg"
  package_id "com.apple.pkg.HewlettPackardPrinterDrivers"
end