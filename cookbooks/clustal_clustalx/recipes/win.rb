#
# Cookbook Name:: clustal_clustalx
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "Clustal ClustalX" do
  source "http://ims-chef.wesleyan.edu/windows/clustal_clustalx/clustalx-2.1-win.msi"
  checksum "6fcedb5370786314c20cc101c190449bb0c8281b9cccdb45c3d66ff393db6675"
  version "2.1.0"
end
