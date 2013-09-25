#
# Cookbook Name:: wolfram_mathematica
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install base .app file
windows_package "Wolfram Mathematica" do
  source "http://ims-chef.wesleyan.edu/windows/wolfram_mathematica/Mathematica_9.0.0_WIN.exe"
  checksum "9f38ec737bab493bdff3d487d3cf537c311ddaa90ce3a9dab6155b2691878e96"
  version "9.0.0"
end

# Create license file
directory "C:\\ProgramData\\Mathematica\\Licensing" do
  recursive true
end

cookbook_file "C:\\ProgramData\\Mathematica\\Licensing\\mathpass"
