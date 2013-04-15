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
  package_id "com.eset.esetNod32Antivirus.pkgid.pkg"
  version "4.1.89"
end

# Configure ESET with our fancy method
eset_nod32_config "ESET Settings" do
	av_update_server "http://gloss.wesleyan.edu:2221"
	av_update_failsafe_username "EAV-33650109"
	av_update_failsafe_password "u2er7jnsaa"
	av_update_server_list "http://gloss.wesleyan.edu:2221"
	racl_server_addr "gloss.wesleyan.edu"
	racl_server_port 2222
	racl_interval 10
	privileged_users "administrator:labuser:root"
	samples_enabled true
	samples_send_files "update"
	samples_send_stats "update"
	samples_send_target "ras:eset"
	av_scan_app_unwanted true
end
