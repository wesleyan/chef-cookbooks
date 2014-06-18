#
# Cookbook Name:: audacity
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
# Install our base directory
dmg_package "Audacity" do
  app "Audacity"
  volumes_dir "Audacity 2.0.5"
  dmg_name "audacity-macosx-ub-2.0.5"
  source "http://sw.wesleyan.edu/os_x/audacity/audacity-macosx-ub-2.0.5.dmg"
  checksum "fb0e1c79159783e90403649c0c21fd067f709fd1d1c0f0f0b2a4b662617d8d90"
  action :install
  type "dir"
  package_id "com.sourceforge.audacity"
  version "2.0.5"
end

# Install the LAME library
dmg_package "LAME Library for Audacity" do
  app "Lame Library v3.98.2 for Audacity"
  volumes_dir "Lame Library v3.98.2 for Audacity"
  dmg_name "Lame_Library_v3.98.2_for_Audacity_on_OSX"
  source "http://sw.wesleyan.edu/os_x/audacity/Lame_Library_v3.98.2_for_Audacity_on_OSX.dmg"
  checksum "5ef5dca6c6dccb06366b44f2b3fc281a496a87247d23e123e133536f929bcb56"
  action :install
  type "pkg"
  package_id "com.sourceforge.audacity.lameLibraryForAudacity.pkg"
end

# Install the FFmpeg library
dmg_package "FFmpeg Library for Audacity" do
  app "FFmpeg_v0.6.2_for_Audacity_on_OSX"
  volumes_dir "FFmpeg_v0.6.2_for_Audacity_on_OSX"
  dmg_name "FFmpeg_v0.6.2_for_Audacity_on_OSX"
  source "http://sw.wesleyan.edu/os_x/audacity/FFmpeg_v0.6.2_for_Audacity_on_OSX.dmg"
  checksum "1870d6f234b0f7c2b105f210511f12abb0917dd30fe852357198dbda61d696c2"
  action :install
  type "pkg"
  package_id "com.sourceforge.audacity.ffmpegLibrariesForAudacity.pkg"
end
