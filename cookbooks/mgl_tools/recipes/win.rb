#
# Cookbook Name:: mgl_tools
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

windows_package 'MGL Tools' do
	source 'http://ims-chef.wesleyan.edu/windows/mgl_tools/mgltools_win32_1.5.6_Setup.exe'
	checksum '179a4bff0ab574366750f31bcc054728ab7beb4118a0e119f4f58e40be436ef0'
	installer_type :custom
	options "/S"
	version '1.5.6'
end