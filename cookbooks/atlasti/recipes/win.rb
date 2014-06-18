#
# Cookbook Name:: atlasti
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

windows_package "AtlasTI" do
	source "http://ims-chef.wesleyan.edu/windows/atlasti/a7setup.msi"
	checksum "b97d21eb5210f11bcb887532cf326bcd5ab044de13393fc33c1f1301fac54493"
	version "7.0.0"
end

cookbook_file "C:\\ProgramData\\Scientific Software\\ATLASti\\ATLAS.INI"