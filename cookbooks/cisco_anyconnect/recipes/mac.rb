#
# Cookbook Name:: cisco_anyconnect
# Recipe:: mac
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
# Installs our package, FYI the dmg was repacked and includes a modified XML to suppress the Web Security install.
dmg_package "Cisco AnyConnect VPN" do
  app "AnyConnect"
  volumes_dir "AnyConnect 3.1.05152"
  dmg_name "anyconnect-macosx-i386-3.1.05152-k9"
  source "http://ims-chef.wesleyan.edu/os_x/cisco_anyconnect/anyconnect-macosx-i386-3.1.05152-k9.dmg"
  checksum "734b48978c4e6cacf7c0c9236c50b0fab9046b30fdb87e37dbbdf6e380e9f837"
  action :install
  type "pkg"
  xml_choices [["choice_websecurity", "selected", 0]]
  package_id "com.cisco.pkg.anyconnect.vpn"
  version "3.1.05152"
end

