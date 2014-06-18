#
# Cookbook Name:: eset_nod32
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
# Install our pre-configured package
windows_package "ESET NOD32" do
  source "http://ims-chef.wesleyan.edu/windows/eset_nod32/Wesleyan_configured_64bit_installer.exe"
  checksum "138d5650b32d23ad1ecfc902ee69d0d8a0e36bacd8dc6c68a7dc7cdea2f47be8"
  installer_type :custom
  options "/quiet /norestart"
  version "5.0.0"
end
