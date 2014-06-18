#
# Cookbook Name:: sassafras_k2
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
dmg_package "Keyserver Client" do
  app "K2Client"
  volumes_dir "K2Client"
  dmg_name "k2client-7.0.1.6.dmg"
  source "http://ims-chef.wesleyan.edu/os_x/sassafras_k2/k2client-7.0.1.6.dmg"
  checksum "161a31bc7736b4ba9a02e92fd84d6ab9754e0d5ac986d5630af656d963a1c0cd"
  action :install
  type "mpkg"
  package_id "com.sassafras.pkg.KeyAccess"
  version "7.0.16"
end
