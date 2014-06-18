#
# Cookbook Name:: trimble_sketchup
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
dmg_package "sketchup-8.0.15157.dmg" do
  app "SketchUp 8.0 Installer"
  volumes_dir "SketchUp 8.0 Installer.pkg"
  dmg_name "sketchup-8.0.15157.dmg"
  source "http://ims-chef.wesleyan.edu/os_x/trimble_sketchup/sketchup-8.0.15157.dmg"
  checksum "cf00de1a26e831514e47e7f1f5bb86fb1d1860e6f668c8d5cd66f24667160a1c"
  action :install
  type "pkg"
  package_id "com.google.sketchup8.sketchup.application"
end

