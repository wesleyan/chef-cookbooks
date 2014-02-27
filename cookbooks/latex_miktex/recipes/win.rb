#
# Cookbook Name:: latex_miktex
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "LaTeX MiKTeX" do
	source "http://ims-chef.wesleyan.edu/windows/latex_miktex/basic-miktex-2.9.4813-x64.exe"
	checksum "e75e3f6ef73b7552d67b4006f21c93a128f344c6b660dcde6793d523e053cfad"
	version "2.9.4813"
	installer_type :custom
	options "--unattended --shared"
end

windows_package "LaTeX TeXMaker" do
	source "http://ims-chef.wesleyan.edu/windows/latex_miktex/texmakerwin32_install.exe"
	checksum "b25097cc3df87a1da8ba11a87e3446c9055183565812933e82a93dc45a692b9c"
	version "4.0.4"
end
