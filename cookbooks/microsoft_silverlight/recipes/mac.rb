#
# Cookbook Name:: silverlight
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
# Install our package
dmg_package "Microsoft Silverlight" do
  app "Silverlight"
  volumes_dir "Silverlight"
  dmg_name "Silverlight"
  source "http://sw.wesleyan.edu/os_x/microsoft_silverlight/silverlight-5.1.30317.0.dmg"
  checksum "a425c522f84c8c3b2bcfb5f40abab0f8d67733f824be5c0e383819d06f230007"
  action :install
  type "pkg"
  package_id "com.microsoft.SilverlightInstaller"
  version "5.1.303170"
end
