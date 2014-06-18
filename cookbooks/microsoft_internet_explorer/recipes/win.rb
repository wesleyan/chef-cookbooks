#
# Cookbook Name:: microsoft_internet_explorer
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

windows_package "Microsoft Internet Explorer" do
	source "http://ims-chef.wesleyan.edu/windows/microsoft_internet_explorer/IE11-Setup-Branding.msi"
	checksum "956a62516b37d3e6f21a3349e966212d569b6ce65f03c9fa1781ad276dd7a5dc"
	version '11.0.0'
end
