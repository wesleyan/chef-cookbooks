#
# Cookbook Name:: eset_nod32
# Recipe:: mac
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#   http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Install package
dmg_package "ESET NOD32" do
  app "esets_remote_install"
  volumes_dir "esets_remote_install"	
  dmg_name "eset_nod32avbe-4.1.92"
  source "http://ims-chef.wesleyan.edu/os_x/eset_nod32/eset_nod32avbe-4.1.92.dmg"
  checksum "d6550b4b642c71c196a3352d1ff9dd58c85ac0c4dd8454121a8f72425d6081f4"
  action :install
  type "pkg"
  package_id "com.eset.esetNod32Antivirus.pkgid.pkg"
  version "4.1.92"
end

# Configure ESET with our fancy method
eset_nod32_config "ESET Settings" do
	av_update_server ""
	av_update_failsafe_username ""
	av_update_failsafe_password ""
	av_update_server_list ""
	racl_server_addr ""
	racl_server_port 2222
	racl_interval 10
	privileged_users "administrator:labuser:root"
	samples_enabled true
	samples_send_files "update"
	samples_send_stats "update"
	samples_send_target "ras:eset"
	av_scan_app_unwanted true
end
