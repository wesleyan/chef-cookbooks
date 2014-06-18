#
# Cookbook Name:: statacorp_stata
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
# Install Stata
windows_package "StataCorp Stata" do
  source "http://ims-chef.wesleyan.edu/windows/statacorp_stata/Stata13MSI.msi"
  checksum "250ac4e9b1eddfbb5184a0a70cbe8142ce99c242c7053a68fce7f1c61aad1ab5"
  options "ADDLOCAL=Ado,Core,StataIC64"
  version "13.0.0"
end

cookbook_file 'C:\Program Files (x86)\Stata13\STATA.LIC'

execute "Update Stata" do
  command '"C:\Program Files (x86)\Stata13\Stata-64.exe" -q -e "update all"'
end
