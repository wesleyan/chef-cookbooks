#
# Cookbook Name:: gvim
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

windows_package "GVim" do
	source "http://ims-chef.wesleyan.edu/windows/gvim/gvim-7-4-50.exe"
	checksum "7375e5db297526966d4bd0dc969a3972009b0bd770ce0a7bb85c99beb45104dc"
	version "7.4.50"
end