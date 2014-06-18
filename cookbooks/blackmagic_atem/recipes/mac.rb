#
# Cookbook Name:: blackmagic_atem
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
# Install the package
dmg_package "Blackmagic ATEM" do
  app "Blackmagic ATEM Switchers Installer 4.1.1"
  volumes_dir "Blackmagic ATEM Switchers"
  dmg_name "Blackmagic_ATEM_Switchers_4.1.1"
  source "http://ims-chef.wesleyan.edu/os_x/blackmagic_atem/Blackmagic_ATEM_Switchers_4.1.1.dmg"
  checksum "c4f39690bd2ee82fcf08df66f5573f42067b4118f965ffe52cf74a1db86a1ca4"
  action :install
  type "pkg"
  package_id "com.blackmagic-design.Switchers"
  version "4.1.1"
end