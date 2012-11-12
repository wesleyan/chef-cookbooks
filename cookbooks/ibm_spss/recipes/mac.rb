#
# Cookbook Name:: ibm_spss
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Put installer properties file in temporary directory
cookbook_file "/tmp/installer.properties"

# Install custom package via commandline
dmg_package "SPSS_Statistics_21_mac_silent.dmg" do
  app "SPSS_Statistics_Installer"
  volumes_dir "SPSSStatistics"
  dmg_name "SPSS_Statistics_21_mac_silent"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/ibm_spss-21/SPSS_Statistics_21_mac_silent.dmg"
  checksum "d5c74264d02dcca7862eb677b05e10d9c2ce82c14979ca0b0a26784f2fbaf17b"
  action :install
  type "custom"
  command "SPSS_Statistics_Installer.bin -f /tmp/installer.properties"
end
