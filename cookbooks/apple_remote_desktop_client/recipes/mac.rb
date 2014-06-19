#
# Cookbook Name:: apple_remote_desktop_client
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
dmg_package "Apple Remote Desktop Client" do
  app "RemoteDesktopClient"
  volumes_dir "Apple Remote Desktop 3.7.1 Client Update"
  dmg_name "RemoteDesktopClient371"
  source "http://ims-chef.wesleyan.edu/os_x/apple_remote_desktop_client/RemoteDesktopClient371.dmg"
  checksum "36ae71ea8259e040743061a8aebe7b6f69eb1e8d1b235dfbc52420eb98e27f5a"
  action :install
  type "pkg"
  package_id "com.apple.pkg.RemoteDesktopClient"
  version "3.7.1"
end
