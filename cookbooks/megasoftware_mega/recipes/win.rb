#
# Cookbook Name:: megasoftware_mega
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

windows_package "MegaSoftware MEGA" do  
  source 'http://ims-chef.wesleyan.edu/windows/megasoftware_mega/MEGA5.22_Setup.exe'
  checksum 'c00009f62303aae03dc81cf6d299e9af2a618ad821b01a08c11bc277cafe4c3f'
  version "5.2.2"
end
