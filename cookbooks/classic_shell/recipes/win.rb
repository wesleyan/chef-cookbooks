#
# Cookbook Name:: classic_shell
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

windows_package 'Classic Shell' do
	source 'http://ims-chef.wesleyan.edu/windows/classic_shell/ClassicShellSetup_4_0_2.exe'
	checksum '79015ab8c92c29d30903ff3cec9687afa151fcfd4d089c47f0fb0ca3c54f8c6d'
	version '4.0.2'
	installer_type :custom
	options "/qn ADDLOCAL=ClassicStartMenu"
end