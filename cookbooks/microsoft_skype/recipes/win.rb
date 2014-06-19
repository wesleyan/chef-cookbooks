#
# Cookbook Name:: microsoft_skype
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
windows_package "Microsoft Skype" do
  source "http://ims-chef.wesleyan.edu/windows/microsoft_skype/SkypeSetupFull-6.7.0.102.exe"
  checksum "31ba35d9287c65b153eb589e73236e2a6bb8ca58a81330544f3bc8fc61819c08"
  version "6.7.0"
end
