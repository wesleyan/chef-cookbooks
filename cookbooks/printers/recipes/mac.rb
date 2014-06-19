#
# Cookbook Name:: printers
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
#
# Install Pharos client
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

printers "Printers" do
  action :set_default
end
