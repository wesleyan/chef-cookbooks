#
# Cookbook Name:: gnu_gnuplot
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "GNU GNUPlot" do
  source "http://ims-chef.wesleyan.edu/windows/gnu_gnuplot/gp463-win32-setup.exe"
  checksum "e803c4ff782fd1b7988eba6193462f7b31d7d34a6fd99ac297bea951b1a62407"
  version "4.6.3"
end
