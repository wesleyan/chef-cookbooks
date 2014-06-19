#
# Cookbook Name:: toast_11_titanium
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
dmg_package "Roxio Toast 11 Titanium" do
  app "Roxio Toast 11 Titanium"
  volumes_dir "Roxio Toast 11 Titanium"
  dmg_name "toast_titanium-11.1.1072"
  source "http://ims-chef.wesleyan.edu/os_x/roxio_toast_titanium/toast_titanium-11.1.1072.dmg"
  checksum "e06997333b5f03b30ee6cf5dee3dc64ec94c68f2bf342587fab7686c90c1e536"
  action :install
  type "pkg"
  package_id "com.roxio.toast.titanium"
  version "11.1.1072"
end

