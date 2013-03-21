#
# Cookbook Name:: audacity
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "Audacity" do
  app "Audacity"
  volumes_dir "Audacity 2.0.3"
  dmg_name "audacity-macosx-ub-2.0.3"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/audacity/audacity-macosx-ub-2.0.3.dmg"
  checksum "85ae417d4d532986c655b5ce634d7aceff64153d8f7ebab57ac9eb273fae58cb"
  action :install
  type "dir"
  package_id "com.sourceforge.audacity"
  version "2.0.3"
end

dmg_package "Lame Library for Audacity" do
  app "Lame Library v3.98.2 for Audacity"
  volumes_dir "Lame Library v3.98.2 for Audacity"
  dmg_name "Lame_Library_v3.98.2_for_Audacity_on_OSX"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/audacity/Lame_Library_v3.98.2_for_Audacity_on_OSX.dmg"
  checksum "5ef5dca6c6dccb06366b44f2b3fc281a496a87247d23e123e133536f929bcb56"
  action :install
  type "pkg"
  package_id "com.sourceforge.audacity.lameLibraryForAudacity.pkg"
end

dmg_package "FFmpeg Library for Audacity" do
  app "FFmpeg_v0.6.2_for_Audacity_on_OSX"
  volumes_dir "FFmpeg_v0.6.2_for_Audacity_on_OSX"
  dmg_name "FFmpeg_v0.6.2_for_Audacity_on_OSX"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/audacity/FFmpeg_v0.6.2_for_Audacity_on_OSX.dmg"
  checksum "1870d6f234b0f7c2b105f210511f12abb0917dd30fe852357198dbda61d696c2"
  action :install
  type "pkg"
  package_id "com.sourceforge.audacity.ffmpegLibrariesForAudacity.pkg"
end
