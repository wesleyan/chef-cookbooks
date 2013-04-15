#
# Cookbook Name:: eset_nod32
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package
dmg_package "ESET NOD32" do
  app "esets_remote_install"
  volumes_dir "esets_remote_install"	
  dmg_name "eset_nod32avbe-4.1.89"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/eset_nod32/eset_nod32avbe-4.1.89.dmg"
  checksum "db6c50a76b0ca3060a69c1ffe2a0bfefd213dbbbc3846287e1b45a3b6793eac1"
  action :install
  type "pkg"
  package_id "com.cycling74.Max61.pkg"
  version "4.1.89"
end

# Configure ESET with our fancy method
configure_eset "ESET Settings" do
	av_update_server "http://gloss.wesleyan.edu:2221"
	av_update_failsafe_username "EAV-33650109"
	av_update_failsafe_password "u2er7jnsaa"
	av_update_server_list "http://gloss.wesleyan.edu:2221"
	racl_server_addr "gloss.wesleyan.edu"
	racl_server_port "2222"
	racl_interval "10"
	privileged_users "administrator:labuser:root"
	samples_enabled "yes"
	samples_send_files "update"
	samples_send_stats "update"
	samples_send_target "ras:eset"
	av_scan_app_unwanted "yes"
end

# Configure ESET settings via command line application "esets_set"
#	/Applications/.esets/Contents/MacOS/esets_set  --section=global 'av_update_server="http://gloss.wesleyan.edu:2221"'
#	/Applications/.esets/Contents/MacOS/esets_set  --section=global 'av_update_failsafe_username="EAV-33650109"'
#	/Applications/.esets/Contents/MacOS/esets_set  --section=global 'av_update_failsafe_password="u2er7jnsaa"'
#	/Applications/.esets/Contents/MacOS/esets_set  --section=global 'av_update_server_list="http://gloss.wesleyan.edu:2221"'
#	/Applications/.esets/Contents/MacOS/esets_set  --section=global 'racl_server_addr="gloss.wesleyan.edu"'
#	/Applications/.esets/Contents/MacOS/esets_set  --section=global 'racl_server_port=2222'
#	/Applications/.esets/Contents/MacOS/esets_set  --section=global 'racl_interval=10'
#	/Applications/.esets/Contents/MacOS/esets_set  --section=global 'privileged_users="administrator:labuser:root"'
#	/Applications/.esets/Contents/MacOS/esets_set  --section=global 'samples_enabled=yes'
#	/Applications/.esets/Contents/MacOS/esets_set  --section=global 'samples_send_files="update"'
#	/Applications/.esets/Contents/MacOS/esets_set  --section=global 'samples_send_stats="update"'
#	/Applications/.esets/Contents/MacOS/esets_set  --section=global 'samples_send_target="ras:eset"'
#	/Applications/.esets/Contents/MacOS/esets_set  --section=global 'av_scan_app_unwanted=yes'
#
#exit 0
