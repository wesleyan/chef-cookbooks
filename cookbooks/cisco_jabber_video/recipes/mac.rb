#
# Cookbook Name:: cisco_jabber_video
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
# Installs App
dmg_package "Cisco Jabber Video" do
  app "Jabber Video"
  volumes_dir "Jabber Video"
  dmg_name "JabberVideo4.6GA"
  source "http://ims-chef.wesleyan.edu/os_x/cisco_jabber_video/JabberVideo4.6GA.dmg"
  checksum "71fa7785ddba911871bf08aa75b98f60493b6aead717c35ad70300113137a0c9"
  action :install
  type "app"
  package_id "com.cisco.jabber.video"
  version "4.6"
end