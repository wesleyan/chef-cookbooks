#
# Cookbook Name:: wacom_tablet
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
# Install our pkg
dmg_package "Wacom Tablet Drivers" do
  app "Install Wacom Tablet"
  volumes_dir "WacomTablet"
  dmg_name "WacomTablet_6.3.7-3"
  source "http://ims-chef.wesleyan.edu/os_x/wacom_tablet/WacomTablet_6.3.7-3.dmg"
  checksum "894271d4ae01781664e8489e57471aaf78c7b84a48dce78b219a9259c6fc4e44"
  package_id "com.wacom.installwacomtablet"
  version "6.3.7"
  action :install
  type "pkg"
end
