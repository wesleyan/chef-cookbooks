#
# Cookbook Name:: muthen_mplus
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
windows_package "Muthen MPlus" do
  source "http://ims-chef.wesleyan.edu/windows/muthen_mplus/mplus-7.11-x64.msi"
  checksum "73e37ee4e3d672588b7423abd22795aac931cee64afeee9286742d34900244b9"
  version "7.11.0"
end