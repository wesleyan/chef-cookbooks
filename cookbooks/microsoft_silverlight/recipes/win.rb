#
# Cookbook Name:: microsoft_silverlight
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
# Install our package.
windows_package "Microsoft Silverlight" do
  source "http://sw.wesleyan.edu/windows/microsoft_silverlight/silverlight-5.1.30317.0.exe"
  checksum "55806d7bacf61799eaee18b0e8a6eda7bf62e384174f506ee75bfa3e898b233c"
  version "5.1.303170"
  installer_type :custom
  options "/q"
end
