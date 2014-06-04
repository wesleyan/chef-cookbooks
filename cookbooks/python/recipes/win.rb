#
# Cookbook Name:: python
# Recipe:: mac
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install Python
windows_package "Python 2.7" do
  source "http://ims-chef.wesleyan.edu/windows/python/python-2.7.5.msi"
  version "2.7.5"
end

# Install Python 3
windows_package "Python 3.3" do
  source "http://ims-chef.wesleyan.edu/windows/python/python-3.3.2.msi"
  version "3.3.2"
end