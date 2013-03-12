#
# Cookbook Name:: printers
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install HP drivers
dmg_package "HewlettPackardPrint2.13.dmg" do
  app "HewlettPackardPrinterDrivers"
  volumes_dir "HewlettPackard Printer Drivers"
  dmg_name "HewlettPackardPrint2.13"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/hp_printer/HewlettPackardPrint2.13.dmg"
  checksum "1a48a34dc7a9bfa415da2acdfd727d4fd80a196587cfb7b6e8cdc47ebfe8ab38"
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

printers "ArtLib-HP4105" do
  model "drv:///sample.drv/laserjet.ppd"
end
printers "Allb204-HP4015-BW" do
  model "drv:///sample.drv/laserjet.ppd"
end
printers "awks112-bw-hp5100n" do
  model "drv:///sample.drv/laserjet.ppd"
end
printers "AWKS112-color-HP5550" do
  model "drv:///sample.drv/laserjet.ppd"
end
printers "CFA-HP5200-BW" do
  model "drv:///sample.drv/laserjet.ppd"
end
printers "cfalab-xerox7760gx-color" do
  model "drv:///sample.drv/laserjet.ppd"
end
printers "Fisk-HP4015BW" do
  model "drv:///sample.drv/laserjet.ppd"
end
printers "HAS-HP4015BW" do
  model "drv:///sample.drv/laserjet.ppd"
end
printers "HASLab_color_HP3800" do
  model "drv:///sample.drv/laserjet.ppd"
end
printers "LRC-HP4015BW2" do
  model "drv:///sample.drv/laserjet.ppd"
end
printers "PAC-HP4015BW2" do
  model "drv:///sample.drv/laserjet.ppd"
end
printers "PAC-HP4015BW" do
  model "drv:///sample.drv/laserjet.ppd"
end
printers "PAC-HP4015BW-2" do
  model "drv:///sample.drv/laserjet.ppd"
end
printers "PACLab_color_HPCP3505n" do
  model "drv:///sample.drv/laserjet.ppd"
end
printers "QAC-HP4015-BW" do
  model "drv:///sample.drv/laserjet.ppd"
end
printers "SCIC-HP4200" do
  model "drv:///sample.drv/laserjet.ppd"
end
printers "Scili-color-HPCP4520" do
  model "drv:///sample.drv/laserjet.ppd"
end
printers "scili-hpm602-bw" do
  model "drv:///sample.drv/laserjet.ppd"
end
printers "ST-HP4015-BW2" do
  model "drv:///sample.drv/laserjet.ppd"
end
printers "ST-HP4015BW" do
  model "drv:///sample.drv/laserjet.ppd"
end
printers "STLab-color-HPCP3505" do
  model "drv:///sample.drv/laserjet.ppd"
end
printers "UsdanLobby-RicohBW" do
  model "drv:///sample.drv/laserjet.ppd"
end

printers "Set Default" do
  name node['printers']['default']
  action :set_default
end