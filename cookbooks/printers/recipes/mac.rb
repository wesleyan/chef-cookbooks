#
# Cookbook Name:: printers
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install HP drivers
dmg_package "HewlettPackardPrint2.12.dmg" do
  app "HewlettPackardPrinterDrivers"
  volumes_dir "HewlettPackard Printer Drivers"
  dmg_name "HewlettPackardPrint2.12"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/hp_printer/HewlettPackardPrint2.12.dmg"
  checksum "43b7a5959366b216e52be9aadbdcefa3d6c63706aaf6983c0743b1ba68e0b749"
  action :install
  type "pkg"
  package_id "com.apple.pkg.HewlettPackardPrinterDrivers"
end

# Install Xerox drivers
  dmg_package "XeroxPrintDrivers2.1.1.dmg" do
  app "XeroxPrinterDrivers"
  volumes_dir "Xerox Printer Drivers"
  dmg_name "XeroxPrintDrivers2.1.1"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/xerox_printer/XeroxPrintDrivers2.1.1.dmg"
  checksum "1196d6499d67baef2c1639d796e5a19bd642b576b195f8ef4c319e0b9da35ad2"
  action :install
  type "pkg"
  package_id "com.apple.pkg.XeroxPrinterDrivers"
end

# Install Epson drivers
dmg_package "EPSONPrintDriver2.28.dmg" do
  app "EpsonPrinterDrivers"
  volumes_dir "EPSON Printer Drivers"
  dmg_name "EPSONPrintDriver2.28"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/epson_printer/EPSONPrintDriver2.28.dmg"
  checksum "fdcedc58da55093dfe350d82caf6ea41919e0e1d12fd758457ac5a816e14041c"
  action :install
  type "pkg"
  package_id "com.apple.pkg.EPSONPrinterDrivers"
end