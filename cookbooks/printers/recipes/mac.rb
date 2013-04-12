#
# Cookbook Name:: printers
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install HP drivers
dmg_package "HP Printer Drivers" do
  app "HewlettPackardPrinterDrivers"
  volumes_dir "HewlettPackard Printer Drivers"
  dmg_name "HewlettPackardPrint2.13"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/hp_printer/HewlettPackardPrint2.13.dmg"
  checksum "1a48a34dc7a9bfa415da2acdfd727d4fd80a196587cfb7b6e8cdc47ebfe8ab38"
  action :install
  type "pkg"
  package_id "com.apple.pkg.HewlettPackardPrinterDrivers"
  version "2.13.0"
end

# Install Xerox drivers
  dmg_package "Xerox Printer Drivers" do
  app "XeroxPrinterDrivers"
  volumes_dir "Xerox Printer Drivers"
  dmg_name "XeroxPrintDrivers2.1.1"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/xerox_printer/XeroxPrintDrivers2.1.1.dmg"
  checksum "1196d6499d67baef2c1639d796e5a19bd642b576b195f8ef4c319e0b9da35ad2"
  action :install
  type "pkg"
  package_id "com.apple.pkg.XeroxPrinterDrivers"
  version "2.1.1"
end

# Install Epson drivers
dmg_package "EPSON Printer Drivers" do
  app "EpsonPrinterDrivers"
  volumes_dir "EPSON Printer Drivers"
  dmg_name "EPSONPrintDriver2.28"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/epson_printer/EPSONPrintDriver2.28.dmg"
  checksum "fdcedc58da55093dfe350d82caf6ea41919e0e1d12fd758457ac5a816e14041c"
  action :install
  type "pkg"
  package_id "com.apple.pkg.EPSONPrinterDrivers"
  version "2.28.0"
end

#install Pharos drivers
dmg_package "Pharos Printer Client" do
  app "Popup"
  volumes_dir "Popup"
  dmg_name "pharos_client_labs"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/pharos_printer/pharos_client_labs.dmg"
  checksum "ad2645718be94bc7c3f2a7160df0858eac0006e31419c9ef59c4b3068b92925c"
  action :install
  type "pkg"
  package_id "com.pharos.printerdrivers"
  version "1.0.1"
end

dmg_package "Epson Drivers" do
  app "Epson3880"
  volumes_dir "Epson"
  dmg_name "Epson"
  type "mpkg"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/epson_printer/Epson.dmg"
  checksum "b620b0761a4ad1a5aa6a38124716aede665e6429e8d5b154cb5bb2d467eef247"
  action :install
  package_id "com.epson.drivers.3880"
  version "1.0.0"
end

dmg_package "Epson Drivers" do
  app "Epson9800"
  volumes_dir "Epson"
  dmg_name "Epson"
  type "mpkg"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/epson_printer/Epson.dmg"
  checksum "b620b0761a4ad1a5aa6a38124716aede665e6429e8d5b154cb5bb2d467eef247"
  action :install
  package_id "com.epson.drivers.9800"
  version "1.0.0"
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
printers "DAC100-E3880-1" do
  model "/Library/Printers/PPDs/Contents/Resources/EPSON Epson Stylus Pro 3880.gz"
  ip "DAC100-E3880-1.class.wesleyan.edu"
end
printers "DAC100-E3880-2" do
  model "/Library/Printers/PPDs/Contents/Resources/EPSON Epson Stylus Pro 3880.gz"
  ip "DAC100-E3880-2.class.wesleyan.edu"
end
printers "DAC100-E3880-3" do
  model "/Library/Printers/PPDs/Contents/Resources/EPSON Epson Stylus Pro 3880.gz"
  ip "DAC100-E3880-3.class.wesleyan.edu"
end
printers "DAC100-9800" do
  model "/Library/Printers/PPDs/Contents/Resources/EPSON Stylus Pro 9800.gz"
  ip "DAC100-E9800.class.wesleyan.edu"
end
printers "Set Default #{node['printers']['default']}" do
  name node['printers']['default']
  only_if { node['printers']['default']}
  action :set_default
end
