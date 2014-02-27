#
# Cookbook Name:: verdiem_surveyor
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

remote_file 'Download Verdiem Surveyor (MSI)' do
	source "http://ims-chef.wesleyan.edu/windows/verdiem_surveyor/SurveyorAgent.msi"
	path 'C:\TEMP\SurveyorAgent.msi'
	checksum "baf6795ec1f6b0277b8441efe9663e114ac6e055c0cc4de328092b8c0dc40612"
	backup false
end

remote_file 'Download Verdiem Surveyor (Data)' do
	source 'http://ims-chef.wesleyan.edu/windows/verdiem_surveyor/Data1.cab'
	path 'C:\TEMP\Data1.cab'
	checksum '661596f564f2915565c3f2dceb5b9283463a0b2d18e33eaff339f0bb08d86984'
	backup false
end

windows_package "Verdiem Surveyor" do
  source 'C:\TEMP\SurveyorAgent.msi'
  options "PMP_URL=https://surveyor-v6.wesleyan.edu/PMPService/PMPService.svc/PMP"
  version "6.0.505"
end