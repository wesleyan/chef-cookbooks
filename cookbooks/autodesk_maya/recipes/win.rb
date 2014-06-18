#
# Cookbook Name:: autodesk_maya
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

remote_file "Data File" do
	source "http://ims-chef.wesleyan.edu/windows/autodesk_maya/Data1.cab"
	path "#{Chef::Config[:file_cache_path]}/Data1.cab"
	backup false
end

windows_package "Autodesk Maya" do
	source "http://ims-chef.wesleyan.edu/windows/autodesk_maya/maya-5.0.1.msi"
	checksum "2f96364743f25d9f8f08b9dcd0a066e09f420368935fb9e11e5cf52eb44b0816"
	version "5.0.1"
end

