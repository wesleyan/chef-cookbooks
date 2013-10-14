#
# Cookbook Name:: perkinelmer_chemdraw_pro
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "PerkinElmer ChemDraw Pro" do
	source "http://ims-chef.wesleyan.edu/windows/perkinelmer_chemdraw_pro/cdp1302.exe"
	checksum "dfa55332f9757c04410df3a994968717c153961df20ff57ebb057deef6ba3f27"
	version "13.0.2"
end