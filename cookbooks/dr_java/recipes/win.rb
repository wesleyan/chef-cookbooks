#
# Cookbook Name:: dr_java
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

directory "C:\\DrJava"

remote_file "Dr. Java" do
	source "http://ims-chef.wesleyan.edu/windows/dr_java/drjava-stable-20130901-r5756.exe"
	checksum "68b999b131481da83077238387c9c88fb7a5e748f345873be157387279fbd13d"
	path "C:\\DrJava\\drjava.exe"
	backup false
end

windows_shortcut "Create Dr. Java Shortcut" do
	cwd "C:\\DrJava"
	target "drjava.exe"
	description "Launches Dr. Java"
	name "C:\\Users\\Default\\AppData\\Roaming\\Microsoft\\Windows\\Start Menu\\Programs\\Dr Java.lnk"
end
 
