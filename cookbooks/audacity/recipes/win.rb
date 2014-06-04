#
# Cookbook Name:: audacity
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our base package
windows_package "Audacity" do
  source "http://sw.wesleyan.edu/windows/audacity/audacity-win-2.0.5.exe"
  checksum "88e63316304304c8e028062bb117025ce0da7a72e5032e9726e2a1ea3c2b961d"
  version "2.0.5"
end

# Install the LAME library
windows_package "LAME for Audacity" do
  source "http://sw.wesleyan.edu/windows/audacity/Lame_v3.99.3_for_Windows.exe"
  checksum "90e9d629b4e528b77c6f51f185c3e81bb3a4eca7d6d53f049ed9ef7787464e8b"
  version "3.99.3"
end

# Install the FFmpeg library
windows_package "FFmpeg for Audacity" do
  source "http://sw.wesleyan.edu/windows/audacity/FFmpeg_v0.6.2_for_Audacity_on_Windows.exe"
  checksum "96760833b848675460ae97cfed64ec1645643420ec386c7b92da556d91af79ef"
  version "0.6.2"
end
