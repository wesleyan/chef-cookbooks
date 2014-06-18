#
# Cookbook Name:: yale_neuron
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
# Install our package
windows_package 'Yale Neuron' do
	source 'http://ims-chef.wesleyan.edu/windows/yale_neuron/nrn-7.3.x86_64-w64-mingw32-setup.exe'
	checksum '2f6bcde446c0b9dc7efd85e6f92027b1174308eb7269db192eed192c93286f08'
	version '7.3.0'
end