#
# Cookbook Name:: apple_airport
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
dmg_package "Apple AirPort Utility" do
  app "AirPortUtility"
  volumes_dir "AirPortUtility"
  dmg_name "AirPortUtility6.3.1"
  source "http://ims-chef.wesleyan.edu/os_x/apple_airport/AirPortUtility6.3.1.dmg"
  checksum "f0cfed9e0acadd22d5d1f642e8e6cf882697bc7760f588b4d35920af792bc2f4"
  action :install
  type "pkg"
  package_id "com.apple.pkg.AirPortUtility"
  version "6.3.1"
end
