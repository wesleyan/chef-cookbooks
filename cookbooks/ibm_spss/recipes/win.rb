#
# Cookbook Name:: ibm_spss
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

windows_package "IBM SPSS" do
	source "http://ims-chef.wesleyan.edu/windows/ibm_spss/SPSS_Statistics_21_win64.exe"
	checksum "3cca741724a5aa1f4509429d707baf6738200d168e6a566105c1dbc37f8d9cb9"
	version "21.0.0"
end
