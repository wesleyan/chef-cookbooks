#
# Cookbook Name:: swi_prolog
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

windows_package 'SWI Prolog' do
	source 'http://ims-chef.wesleyan.edu/windows/swi_prolog/w64pl641.exe'
	checksum 'ea6617d8d36d5d730a1889ad406fdc6d141f242620bbf623290f3c4fcd4a7426'
	version '6.4.1'
end
