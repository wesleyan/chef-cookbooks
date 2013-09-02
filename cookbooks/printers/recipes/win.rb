#
# Cookbook Name:: windows_printer_port_lpr
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_feature "Printing-Foundation-LPRPortMonitor"

%w{ ArtLib-HP4105 Allb204-HP4015-BW awks112-bw-hp5100n AWKS112-color-HP5550 cfalab-xerox7760gx-color Fisk-HP4015BW 
HAS-HP4015BW HASLab_color_HP3800 LRC-HP4015BW2 PAC-HP4015BW2 PAC-HP4015BW PAC-HP4015BW-2 PACLab_color_HPCP3505n QAC-HP4015-BW
SCIC-HP4200 Scili-color-HPCP4520 scili-hpm602-bw ST-HP4015-BW2 ST-HP4015BW STLab-color-HPCP3505 UsdanLobby-RicohBW }.each do | printer_name |
	windows_printer_port_lpr printer_name do
		lpr_server "falcon.wesleyan.edu"
	end
end

windows_printer_lpr "ArtLib-HP4105" do
  driver "HP LaserJet 4100 Series PS Class Driver"
  lpr_server "falcon.wesleyan.edu"
end

windows_printer_lpr "Allb204-HP4015-BW" do
  driver "HP LaserJet P4014/P4015 PCL6 Class Driver"
  lpr_server "falcon.wesleyan.edu"
end

windows_printer_lpr "CFA-HP5200-BW" do
  driver "HP LaserJet 5200 PCL6 Class Driver"
  lpr_server "falcon.wesleyan.edu"
end

windows_printer_lpr "cfalab-xerox7760gx-color" do
  driver "Xerox PCL6 Class Driver"
  lpr_server "falcon.wesleyan.edu"
end

windows_printer_lpr "Fisk-HP4015BW" do
  driver "HP LaserJet P4014/P4015 PCL6 Class Driver"
  lpr_server "falcon.wesleyan.edu"
end

windows_printer_lpr "HAS-HP4015BW" do
  driver "HP LaserJet P4014/P4015 PCL6 Class Driver"
  lpr_server "falcon.wesleyan.edu"
end

windows_printer_lpr "HASLab_color_HP3800" do
  driver "HP Color LaserJet 3800 PCL6 Class Driver"
  lpr_server "falcon.wesleyan.edu"
end

windows_printer_lpr "LRC-HP4015BW2" do
  driver "HP LaserJet P4014/P4015 PCL6 Class Driver"
  lpr_server "falcon.wesleyan.edu"
end

windows_printer_lpr "PAC-HP4015BW2" do
  driver "HP LaserJet P4014/P4015 PCL6 Class Driver"
  lpr_server "falcon.wesleyan.edu"
end

windows_printer_lpr "PAC-HP4015BW" do
  driver "HP LaserJet P4014/P4015 PCL6 Class Driver"
  lpr_server "falcon.wesleyan.edu"
end

windows_printer_lpr "PAC-HP4015BW-2" do
  driver "HP LaserJet P4014/P4015 PCL6 Class Driver"
  lpr_server "falcon.wesleyan.edu"
end

windows_printer_lpr "PACLab_color_HPCP3505n" do
  driver "HP Color LaserJet CP3505 PCL6 Class Driver"
  lpr_server "falcon.wesleyan.edu"
end

windows_printer_lpr "QAC-HP4015-BW" do
  driver "HP LaserJet P4014/P4015 PCL6 Class Driver"
  lpr_server "falcon.wesleyan.edu"
end

windows_printer_lpr "SCIC-HP4200" do
  driver "HP LaserJet 4200/4300 PCL6 Class Driver"
  lpr_server "falcon.wesleyan.edu"
end

windows_printer_lpr "Scili-color-HPCP4520" do
  driver "HP Color LaserJet CP4025/4525 PCL6 Class Driver"
  lpr_server "falcon.wesleyan.edu"
end

windows_printer_lpr "scili-hpm602-bw" do
  driver "HP LaserJet Enterprise 600 M601 M602 M603 PCL6 Class Driver"
  lpr_server "falcon.wesleyan.edu"
end

windows_printer_lpr "ST-HP4015-BW2" do
  driver "HP LaserJet P4014/P4015 PCL6 Class Driver"
  lpr_server "falcon.wesleyan.edu"
end

windows_printer_lpr "ST-HP4015BW" do
  driver "HP LaserJet P4014/P4015 PCL6 Class Driver"
  lpr_server "falcon.wesleyan.edu"
end

windows_printer_lpr "STLab-color-HPCP3505" do
  driver "HP Color LaserJet CP3505 PCL6 Class Driver"
  lpr_server "falcon.wesleyan.edu"
end

windows_printer_lpr "UsdanLobby-RicohBW" do
  driver "HP LaserJet P4014/P4015 PCL6 Class Driver"
  lpr_server "falcon.wesleyan.edu"
end