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

#install Pharos drivers
dmg_package "Pharos Printers" do
  app "Popup"
  volumes_dir "Pharos"
  dmg_name "Pharos"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/pharos_printer/Pharos.dmg"
  checksum "55fee0ca2184acae96a827af569ec910ba350a3b8e6dd4b6b5b7e5bc58abed6a"
  action :install
  type "pkg"
  package_id "com.pharos.printerdrivers"
  version "1"
end

# copies color/luster preferences
cookbook_file "/Library/ColorSync/Profiles/DAC100 Epson 3880 Inkpress Luster Feb 2013.icc" do
  cookbook "printers"
  source "DAC100 Epson 3880 Inkpress Luster Feb 2013.icc"
  mode 0666
  owner "root"
  group "wheel"
  action :create
end

printers "ArtLib-HP4105" do
  model "/Library/Printers/PPDs/Contents/Resources/HP LaserJet 4100 Series.gz"
end
printers "Allb204-HP4015-BW" do
  model "/Library/Printers/PPDs/Contents/Resources/HP LaserJet 4000 Series.gz"
end
printers "awks112-bw-hp5100n" do
  model "/Library/Printers/PPDs/Contents/Resources/HP LaserJet 5100 Series.gz"
end
printers "AWKS112-color-HP5550" do
  model "/Library/Printers/PPDs/Contents/Resources/HP Color LaserJet 5550.gz"
end
printers "CFA-HP5200-BW" do
  model "/Library/Printers/PPDs/Contents/Resources/HP LaserJet 5200 Series.gz"
end
printers "cfalab-xerox7760gx-color" do
  model "/Library/Printers/PPDs/Contents/Resources/Xerox Phaser 7760GX.gz"
end
printers "Fisk-HP4015BW" do
  model "/Library/Printers/PPDs/Contents/Resources/HP LaserJet 4000 Series.gz"
end
printers "HAS-HP4015BW" do
  model "/Library/Printers/PPDs/Contents/Resources/HP LaserJet 4000 Series.gz"
end
printers "HASLab_color_HP3800" do
  model "/Library/Printers/PPDs/Contents/Resources/HP Color LaserJet 3800.gz"
end
printers "LRC-HP4015BW2" do
  model "/Library/Printers/PPDs/Contents/Resources/HP LaserJet 4000 Series.gz"
end
printers "PAC-HP4015BW2" do
  model "/Library/Printers/PPDs/Contents/Resources/HP LaserJet 4000 Series.gz"
end
printers "PAC-HP4015BW" do
  model "/Library/Printers/PPDs/Contents/Resources/HP LaserJet 4000 Series.gz"
end
printers "PAC-HP4015BW-2" do
  model "/Library/Printers/PPDs/Contents/Resources/HP LaserJet 4000 Series.gz"
end
printers "PACLab_color_HPCP3505n" do
  model "/Library/Printers/PPDs/Contents/Resources/HP Color LaserJet CP3505.gz"
end
printers "QAC-HP4015-BW" do
  model "/Library/Printers/PPDs/Contents/Resources/HP LaserJet 4000 Series.gz"
end
printers "SCIC-HP4200" do
  model "/Library/Printers/PPDs/Contents/Resources/hp LaserJet 4200 Series.gz"
end
printers "Scili-color-HPCP4520" do
  model "/Library/Printers/PPDs/Contents/Resources/HP Color LaserJet CP4020 CP4520 Series.gz"
end
printers "scili-hpm602-bw" do
  model "/Library/Printers/PPDs/Contents/Resources/HP LaserJet 600 M601 M602 M603.gz"
end
printers "ST-HP4015-BW2" do
  model "/Library/Printers/PPDs/Contents/Resources/HP LaserJet 4000 Series.gz"
end
printers "ST-HP4015BW" do
  model "/Library/Printers/PPDs/Contents/Resources/HP LaserJet 4000 Series.gz"
end
printers "STLab-color-HPCP3505" do
  model "/Library/Printers/PPDs/Contents/Resources/HP Color LaserJet CP3505.gz"
end
printers "UsdanLobby-RicohBW" do
  model "drv:///sample.drv/laserjet.ppd"
end

printers "Set Default" do
  name node['printers']['default']
  action :set_default
end
