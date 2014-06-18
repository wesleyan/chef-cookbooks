#
# Cookbook Name:: videon_vlc
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
# Install package
windows_package "VideoLAN VLC" do
  source "http://ims-chef.wesleyan.edu/windows/videolan_vlc/vlc-2.1.4-win64.exe"
  checksum "57e0725b34d3647fb0dbbea80cb1b8808a89917458518fe5e8cddec144504744"
  version "2.1.4"
end