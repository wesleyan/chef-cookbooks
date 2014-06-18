#
# Cookbook Name:: cisco_anyconnect
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

windows_package "Cisco AnyConnect VPN" do
  source "http://ims-chef.wesleyan.edu/windows/cisco_anyconnect/anyconnect-win-3.1.01065-web-deploy-k9.exe"
  checksum "522b1bf8994c04301cffbdcd928485d31c7c69edfcec01dcd44060b9ce51107f"
  version "3.0.11042"
  installer_type :custom
  options "/qn"
end

