#
# Cookbook Name:: printers
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install HP drivers
dmg_package "HP Printer Drivers" do
  app "HewlettPackardPrinterDrivers"
  volumes_dir "HewlettPackard Printer Drivers"
  dmg_name "HPPrinterDrivers2.14"
  source "http://ims-chef.wesleyan.edu/os_x/hp_printer/HPPrinterDrivers2.14.dmg"
  checksum "c14f44c8e009954870ae90fdec63fea91ea1716f06a9fefc5a2cbe139c3dc9d2"
  action :install
  type "pkg"
  package_id "com.apple.pkg.HewlettPackardPrinterDrivers"
  version "2.14.0"
end

# Install Xerox drivers
  dmg_package "Xerox Printer Drivers" do
  app "XeroxPrinterDrivers"
  volumes_dir "Xerox Printer Drivers"
  dmg_name "XeroxPrinterDrivers2.3.dmg"
  source "http://ims-chef.wesleyan.edu/os_x/xerox_printer/XeroxPrinterDrivers2.3.dmg"
  checksum "36c9e37bc1c7d5c3edc4273c28e6e19628de2faf2e974a0ef6fbd0fb0c70c80e"
  action :install
  type "pkg"
  package_id "com.apple.pkg.XeroxPrinterDrivers"
  version "2.3.0"
end

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
printers "ST-HP4015-BW2" do
  model "/Library/Printers/PPDs/Contents/Resources/HP LaserJet 4000 Series.gz"
end
printers "ST-HP4015BW" do
  model "/Library/Printers/PPDs/Contents/Resources/HP LaserJet 4000 Series.gz"
end
printers "STLab-color-HPCP3505" do
  model "/Library/Printers/PPDs/Contents/Resources/HP Color LaserJet CP3505.gz"
end
printers "SciLi-Color-HPCP4520" do
  action :remove
end
printers "SciLi-hpm602bw" do
  action :remove
end


printers "UsdanLobby-RicohBW" do
  model "drv:///sample.drv/laserjet.ppd"
end

printers "Set Default #{node['printers']['default']}" do
  name node['printers']['default']
  only_if { node['printers']['default'] and node['printers']['default'] =~ /DAC100/ }
  action :set_default
end
