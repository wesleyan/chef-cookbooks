#
# Cookbook Name:: apple_remote_desktop_admin
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
# Install base pkg.
dmg_package "Apple Remote Desktop Admin" do
  app "RemoteDesktopAdmin"
  volumes_dir "RemoteDesktopAdmin"
  dmg_name "RemoteDesktopAdmin3"
  source "http://ims-chef.wesleyan.edu/os_x/apple_remote_desktop_admin/RemoteDesktopAdmin3.dmg"
  checksum "dee02ddbbc614af7cc9c1282fc8abfeb1b21f26ab0aeb913d4cdb7bee637436c"
  action :install
  type "mpkg"
  package_id "com.apple.pkg.RemoteDesktopAdmin"
end

# Install update pkg.
dmg_package "Apple Remote Desktop Admin Update" do
  app "RemoteDesktopAdmin371"
  volumes_dir "Apple Remote Desktop 3.7.1 Admin Update"
  dmg_name "RemoteDesktopAdmin371"
  source "http://ims-chef.wesleyan.edu/os_x/apple_remote_desktop_admin/RemoteDesktopAdmin371.dmg"
  checksum "02dbb4ba6e3fc09980402cf277cb02cc4373e8f41dfbad102d9c8bd939074555"
  action :install
  type "pkg"
  package_id "com.apple.pkg.RemoteDesktopAdmin371"
end

# Drop in our settings to suppress serial prompt.
dmg_package "Remote Desktop Settings" do
  app "ARD Settings"
  volumes_dir "ARD Settings"
  dmg_name "ARDSettings"
  source "http://ims-chef.wesleyan.edu/os_x/apple_remote_desktop_admin/ARDSettings.dmg"
  checksum "641cedf0a26a484f0f0362e9f64e0ff338de1b80f2160cd2478cc750d80619ad"
  action :install
  type "pkg"
  version "1.0.0"
  package_id "edu.wesleyan.ardsettings"
end