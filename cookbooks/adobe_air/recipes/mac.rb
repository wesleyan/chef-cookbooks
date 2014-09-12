#
# Cookbook Name:: adobe_air
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
# Install package, package was generated with autopkg as Adobe AIR is a .app as installer because Adobe is awesome.
dmg_package "Adobe AIR" do
  app "AdobeAIR"
  volumes_dir "AdobeAIR"
  dmg_name "adobeair-15.0.0"
  source "http://ims-chef.wesleyan.edu/os_x/adobe_air/adobe_air-15.0.0.dmg"
  checksum "07f7ae83b9d9005c830ce7592d651c378e235a20f62da692410035a703af20c7"
  action :install
  type "pkg"
  package_id "com.adobe.pkg.AIR"
  version "15.0.0"
end
