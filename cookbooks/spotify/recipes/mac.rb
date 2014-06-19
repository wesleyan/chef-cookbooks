#
# Cookbook Name:: spotify
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
# Install our .app
dmg_package "Spotify" do
  app "Spotify"
  volumes_dir "Spotify"
  dmg_name "Spotify-0.9.1.57"
  source "http://ims-chef.wesleyan.edu/os_x/spotify/Spotify-0.9.1.57.dmg"
  checksum "068a04c4ec99104e9d2814c302e31f328dc5ed7ff685507fdddc17822b44e003"
  action :install
  type "app"
  package_id "com.spotify.spotifyapp"
  version "0.9.157"
end
