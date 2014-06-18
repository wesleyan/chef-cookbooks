#
# Cookbook Name:: nextengine_scanstudio
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

windows_package "NextEngine 3D Scanner Driver" do
	source "http://ims-chef.wesleyan.edu/windows/nextengine_scanstudio/3d_scanner_driver.exe"
	version "10.10.0"
end

windows_package "NextEngine ScanStudio HD"  do
	source "http://ims-chef.wesleyan.edu/windows/nextengine_scanstudio/ScanStudioHD_1.3.2.exe"
	version "1.3.2"
	installer_type :nsis
end