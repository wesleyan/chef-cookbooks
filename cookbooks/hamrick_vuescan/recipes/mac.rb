#
# Cookbook Name:: hamrick_vuescan
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
# Installs VueScan from DMG
dmg_package "Hamrick VueScan" do
  app "VueScan"
  volumes_dir "VueScan"
  dmg_name "vuescan-x64-9.4.24"
  source "http://ims-chef.wesleyan.edu/os_x/hamrick_vuescan/vuescan-x64-9.4.24.dmg"
  checksum "fe683d00d095cf6b2c40b36a7dafe080d927e2bc526f4c61b1bccedc7aa51588"
  action :install
  type "app"
  package_id "com.hamrick.vuescan"
  version "9.4.24"
end

# Inserts VueScan license file
cookbook_file "/Users/Shared/.vuescanrc" do
	owner "root"
	group "wheel"
	mode 00644
end

