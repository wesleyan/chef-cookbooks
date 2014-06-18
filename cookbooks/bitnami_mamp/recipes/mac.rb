#
# Cookbook Name:: bitnami_mamp
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

dmg_package "BitNami Mamp" do
  options "--mode unattended"
  app "BitNami MAMP.app/Contents/MacOS/installbuilder.sh"
  volumes_dir "MAMP 5.4.16-0"
  dmg_name "bitnami-mampstack-5.4.16-0-osx-x86_64-installer"
  source "http://ims-chef.wesleyan.edu/os_x/bitnami_mamp/bitnami-mampstack-5.4.16-0-osx-x86_64-installer.dmg"
  checksum "8ab4dca591aaf8dbbe1b4b2f8f7490472ad2e75e92ed974c8b5685485b9af475"
  action :install
  type "custom"
  package_id "com.bitnami.mamp"
  version "5.4.16"
end

