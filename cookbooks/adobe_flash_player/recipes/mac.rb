#
# Cookbook Name:: adobe_flash_player
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
# Install our package.
dmg_package "Adobe Flash Player" do
  app "AdobeFlashPlayer"
  volumes_dir "AdobeFlashPlayer"
  dmg_name "adobeflashplayer-13.0.0.214"
  source "http://sw.wesleyan.edu/os_x/adobe_flash_player/adobeflashplayer-13.0.0.214.dmg"
  checksum "0e3214aee4032c66f417bda0dd66f656caf825c824bcb3d44fb4c39cf5cbc3e5"
  action :install
  type "pkg"
  package_id "com.adobe.pkg.FlashPlayer"
  version "13.0.0214"
end

# Create directory for mms.cfg
directory "/Library/Application Support/Macromedia" do
  owner "root"
  group "admin"
  mode 00777
  action :create
end

# Seed file that disables automatic updates.
cookbook_file "/Library/Application Support/Macromedia/mms.cfg" do
  mode 0644
end