#
# Cookbook Name:: xrite_colormunki_photo
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
# Install our mpkg
dmg_package "X-Rite ColorMunki Photo" do
  app "ColormunkiPhoto"
  volumes_dir "ColormunkiPhoto-1.1.1"
  dmg_name "ColormunkiPhoto-1.1.1"
  source "http://ims-chef.wesleyan.edu/os_x/xrite_colormunki_photo/ColormunkiPhoto-1.1.1.dmg"
  checksum "1332ede34e7c804e5a21b3edeab5d6cb06c271db0f617582d022bd492fea7f01"
  action :install
  type "mpkg"
  package_id "com.colormunki.photo"
  version "1.1.1"
end

