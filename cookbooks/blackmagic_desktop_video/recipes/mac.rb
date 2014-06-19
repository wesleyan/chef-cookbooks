#
# Cookbook Name:: blackmagic_desktop_video
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
# Install the package
dmg_package "Blackmagic Desktop Video" do
  app "Desktop Video Installer 9.7.7"
  volumes_dir "Desktop Video Installer"
  dmg_name "DesktopVideo_9.7.7"
  source "http://ims-chef.wesleyan.edu/os_x/blackmagic_desktop_video/DesktopVideo_9.7.7.dmg"
  checksum "a24b67e5f42b4718e93ca964a55ede84c85df738b36a61795478710c9aeda51c"
  action :install
  type "pkg"
  package_id "com.blackmagic-design.DesktopVideo"
  version "9.7.7"
end