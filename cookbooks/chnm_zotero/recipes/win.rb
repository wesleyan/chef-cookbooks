#
# Cookbook Name:: chnm_zotero
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

remote_file "Download Zotero" do
  source 'http://ims-chef.wesleyan.edu/windows/chnm_zotero/Zotero.zip'
  path 'C:\TEMP\Zotero.zip'
  checksum '90e3b92c0e9377afeadf11dde747cd294f8a976bac3a701ea1e8ff9e489ecfba'
end

execute "Expand Zotero" do
  command '"C:\Program Files (x86)\7-Zip\7z.exe" x "C:\TEMP\Zotero.zip" -y -o"C:\TEMP"'
end

windows_package "Zotero" do
  source 'C:\TEMP\Zotero-4.0.16_setup\setup.exe'
  version "4.0.16"
end

ruby_block 'Zotero for Firefox Directories' do
  block do
    ::Dir.mkdir 'C:\Program Files (x86)\Mozilla Firefox\extensions' unless ::Dir.exists? 'C:\Program Files (x86)\Mozilla Firefox\extensions'
    ::Dir.mkdir 'C:\Program Files (x86)\Mozilla Firefox\defaults' unless ::Dir.exists? 'C:\Program Files (x86)\Mozilla Firefox\defaults'
    ::Dir.mkdir 'C:\Program Files (x86)\Mozilla Firefox\defaults\preferences' unless ::Dir.exists? 'C:\Program Files (x86)\Mozilla Firefox\defaults\preferences'
  end
end

# Install Firefox add-on, current version 4.0.12
cookbook_file 'C:\Program Files (x86)\Mozilla Firefox\extensions\zotero@chnm.gmu.edu.xpi'
cookbook_file 'C:\Program Files (x86)\Mozilla Firefox\defaults\preferences\scopes.js'