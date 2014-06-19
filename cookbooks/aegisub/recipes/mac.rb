#
# Cookbook Name:: aegisub
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
dmg_package "Aegisub" do
  app "Aegisub"
  volumes_dir "Aegisub-3.1.1"
  dmg_name "Aegisub-3.1.1"
  source "http://ims-chef.wesleyan.edu/os_x/aegisub/Aegisub-3.1.1.dmg"
  checksum "cab09083d94d1376f986689484bb096a1dbf57b08802828ea8b7cc509308a203"
  action :install
  type "app"
  package_id "org.aegisub.app"
  version "3.1.1"
end