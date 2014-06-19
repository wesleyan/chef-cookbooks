#
# Cookbook Name:: adobe_flash_player
# Recipe:: win
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
#
# Flash is packaged with IE in Windows 8, so the Active X installer is not needed.
windows_package "Adobe Flash Player (for plugin-based browsers)" do
  source "http://sw.wesleyan.edu/windows/adobe_flash_player/adobeflashplayer-13.0.0.214.msi"
  checksum "3adf8ae8383ee5ff4ae5ddbb9e51bf186f27eb5c8fb3f0a35e00a8e26030cd1c"
  version "13.0.0214"
end

# Create directory for mms.cfg
directory "C:\\Windows\\SysWOW64\\Macromed\\Flash" do
  recursive true
  action :create
end

# Seed file that disables automatic updates.
cookbook_file "C:\\Windows\\SysWOW64\\Macromed\\Flash\\mms.cfg"