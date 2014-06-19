#
# Cookbook Name:: uiuc_vmd
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

windows_package "VMD" do
	source "http://ims-chef.wesleyan.edu/windows/uiuc_vmd/vmd191win32cuda.msi"
	checksum "c50f48959ceb5e569080a523e155fd472d5c4bf90e2650bb4a2574919a5a8d35"
	version "1.9.1"
end