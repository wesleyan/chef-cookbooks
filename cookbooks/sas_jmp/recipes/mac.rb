#
# Cookbook Name:: sas_jmp
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
dmg_package "SAS JMP" do
  app "JMP 10"
  volumes_dir "JMP-10-Installer"
  dmg_name "JMP-10"
  source "http://ims-chef.wesleyan.edu/os_x/sas_jmp/JMP-10.dmg"
  checksum "6847365a6d34b5123dda002961c02490d49b238c8cd511ab2ac18f43550d38f6"
  action :install
  type "pkg"
  package_id "com.sas.pkg.JMP10AnnualLicense32"
end
