#
# Cookbook Name:: rstudio
# Recipe:: win
#
# Copyright 2014, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install our package.
windows_package "RStudio" do
  source "http://sw.wesleyan.edu/windows/rstudio/RStudio-0.98.507.exe"
  checksum "ef72678d487aee6e1527c5f9f90f1d2c1f8e94a02c5fd2b00a30cd8b947e211b"
  version "0.98.507"
end