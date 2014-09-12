#
# Cookbook Name:: apple_itunes
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
dmg_package "iTunes" do
  app "Install iTunes"
  volumes_dir "iTunes"
  dmg_name "iTunes11.4"
  source "http://ims-chef.wesleyan.edu/os_x/apple_itunes/iTunes11.4.dmg"
  checksum "70a8369ca794251fb22fd976eb8019001f8178d3e1d5044c22a665cca81b3fd8"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iTunesX"
  version "11.4.0"
end
