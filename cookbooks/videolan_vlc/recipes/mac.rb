#
# Cookbook Name:: videon_vlc
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
# Install package
dmg_package "VideoLAN VLC" do
  app "VLC"
  volumes_dir "VLC"
  dmg_name "vlc-2.1.4"
  source "http://ims-chef.wesleyan.edu/os_x/videolan_vlc/vlc-2.1.4.dmg"
  checksum "88a296fe89b95789d7780ec7556c6713bf0351a55d1705e523183e492e4c633c"
  action :install
  type "pkg"
  package_id "org.videolan.vlc.pkg"
  version "2.1.4"
end

# Add to dock
dock_add "/Applications/VLC.app" do
  all_users true
#  restart true  
end

launch_association_set_file_handler "public.movie" do
  bundle_id "org.videolan.vlc"
  all_users true
end
