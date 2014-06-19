#
# Cookbook Name:: apple_iwork
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
# Install Keynote
dmg_package "Keynote" do
  app "Keynote"
  volumes_dir "Keynote"
  dmg_name "keynote-6.2.dmg"
  source "http://sw.wesleyan.edu/os_x/apple_iwork/keynote-6.2.dmg"
  checksum "d3fd006824ef7bdc0fd4ae154a70d1048083a50ee339e65757f61c18a0a53560"
  action :install
  type "pkg"
  package_id "com.apple.pkg.Keynote6"
end

# Install Numbers
dmg_package "Numbers" do
  app "Numbers"
  volumes_dir "Numbers"
  dmg_name "numbers-3.2"
  source "http://sw.wesleyan.edu/os_x/apple_iwork/numbers-3.2.dmg"
  checksum "bc1ed9d878b2e62939b746668d2106e4dcf3ff94a633c85caa5598d2de882312"
  action :install
  type "pkg"
  package_id "com.apple.pkg.Numbers3"
end

# Install Pages
dmg_package "Pages" do
  app "Pages"
  volumes_dir "Pages"
  dmg_name "pages-5.2"
  source "http://sw.wesleyan.edu/os_x/apple_iwork/pages-5.2.dmg"
  checksum "7991916bc43f7868af8d6aa7cacdf1a8eda7d268916dc228de3715d8580661f0"
  action :install
  type "pkg"
  package_id "com.apple.pkg.Pages5"
end

# Need to check on this stuff, likely does not work.
#cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.apple.iWork.Keynote.plist"
#directory "/System/Library/User Template/English.lproj/Library/Preferences/ByHost"
#cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/ByHost/com.apple.iWork.Keynote.1F88AEF2-ECEE-5B2E-82BD-94B0AE1305F1.plist"
#cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/ByHost/com.apple.iWork.1F88AEF2-ECEE-5B2E-82BD-94B0AE1305F1.plist"
#cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.apple.iWork09.plist"