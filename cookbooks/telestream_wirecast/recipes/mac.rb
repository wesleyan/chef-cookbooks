#
# Cookbook Name:: telestream_wirecast
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
# Install the .app
dmg_package "Telestream Wirecast" do
  app "Wirecast"
  volumes_dir "Wirecast"
  dmg_name "Wirecast-4.3"
  source "http://ims-chef.wesleyan.edu/os_x/telestream_wirecast/Wirecast-4.3.dmg"
  checksum "9643ce59135bc9b9e2fbe5e1ca872640c19eb3f7c4af717a2b68b7011f8d1aa2"
  action :install
  type "app"
  package_id "net.telestream.wirecast"
  version "4.3.0"
end