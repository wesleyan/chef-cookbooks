#
# Cookbook Name:: rodsbooks_refind
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
# Download the rEFInd installer from the cookbook
cookbook_file "/tmp/refind-bin-0.7.8.zip"

# Unzip the installer and run the install script.
execute "unzip /tmp/refind-bin-0.7.8.zip -d /tmp/" do
  not_if { ::File.exists? "/tmp/refind-bin-0.7.8" }
end

# Run the install script.
execute "/tmp/refind-bin-0.7.8/install.sh && touch /var/db/receipts/com.rodsbooks.refind.plist" do
  not_if { ::File.exists? "/var/db/receipts/com.rodsbooks.refind.plist" }
end
