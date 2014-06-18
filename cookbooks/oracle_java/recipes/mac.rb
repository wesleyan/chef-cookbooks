#
# Cookbook Name:: oracle_java
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
# Installs system-level Java 6 Runtime for applications, disables Java 6 web plug-in
dmg_package "Apple Java" do
  app "JavaForOSX"
  volumes_dir "Java for OS X 2014-001"
  dmg_name "JavaForOSX2014-001"
  source "http://ims-chef.wesleyan.edu/os_x/apple_java/JavaForOSX2014-001.dmg"
  checksum "97bc9b3c47af1f303710c8b15f2bcaedd6b40963c711a18da8eac1e49690a8a0"
  action :install
  type "pkg"
  package_id "com.apple.pkg.JavaForMacOSX107"
  version "2014.1.0"
end

# Installs Java 7 web plug-in for browsers
dmg_package "Oracle Java" do
  app "Java 7 Update 60"
  volumes_dir "Java 7 Update 60"
  dmg_name "jre-7u60-macosx-x64"
  source "http://ims-chef.wesleyan.edu/os_x/oracle_java/jre-7u60-macosx-x64.dmg"
  checksum "53fc090e8b95c65b6736d2dd8c8c9270d8b3a5bc5891fdfa9c871659f6c5ffe4"
  action :install
  type "pkg"
  package_id "com.oracle.jre"
  version "7.0.60"
end

# Enable Java in Safari by default.
cookbook_file "/Library/Application Support/Oracle/Java/Enabled.plist" do
  mode 0664
end