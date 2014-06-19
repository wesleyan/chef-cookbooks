#
# Cookbook Name:: smlnj
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

windows_package "SMLNJ" do
	source "http://ims-chef.wesleyan.edu/windows/smlnj/smlnj.msi"
	checksum "0c3167c3da15a0263fa58f58f00463fcc93d61a4bc236b0f963a3ec8909bcf7d"
	version "110.76.0"
end