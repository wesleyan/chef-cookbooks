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
  app "Java 7 Update 67"
  volumes_dir "Java 7 Update 67"
  dmg_name "jre-7u67-macosx-x64"
  source "http://ims-chef.wesleyan.edu/os_x/oracle_java/jre-7u67-macosx-x64.dmg"
  checksum "fcd0f9504ed3dabccd2f7db03ad79f919c057ce3fe6b70d7c11ad55a15b18bdf"
  action :install
  type "pkg"
  package_id "com.oracle.jre"
  version "7.0.67"
end

# Enable Java in Safari by default.
cookbook_file "/Library/Application Support/Oracle/Java/Enabled.plist" do
  mode 0664
end
