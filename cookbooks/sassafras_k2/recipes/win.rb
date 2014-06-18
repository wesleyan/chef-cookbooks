#
# Cookbook Name:: sassafras_k2
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

windows_package "Sassafras K2" do
  source "http://ims-chef.wesleyan.edu/windows/sassafras_k2/K2Client.exe"
  checksum "40132cb47f7f43a5be27fdf735be89d2c109d8e9c9e0c3280e2941214965729a"
  version "7.1.04"
  installer_type :custom
end
