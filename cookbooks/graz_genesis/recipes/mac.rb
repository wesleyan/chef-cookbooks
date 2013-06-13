#
# Cookbook Name:: graz_genesis
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install package, license info is seeded into pkg, premade with PackageMaker
dmg_package "genesis-1.7.6.dmg" do
  app "Genesis-1.7.6"
  volumes_dir "Genesis"
  dmg_name "genesis-1.7.6"
  source "http://ims-chef.wesleyan.edu/os_x/graz_genesis/genesis-1.7.6.dmg"
  checksum "6b040a204ab7f843fb14c8749004ca4e6c98e595551c75228f0cbe4b6dee732e"
  action :install
  type "pkg"
  package_id "com.graz.Genesis.pkg"
end

cookbook_file "/tmp/genesis.zip"
execute 'unzip /tmp/genesis.zip -d /System/Library/User\ Template/English.lproj/' do
  creates "/System/Library/User Template/English.lproj/.genesis"
end

# Create dock folder, if it does not exist
dock_add "Natural Sciences and Mathematics" do
  all_users true
  action :folder_create
  show_as "list"
  display_as "folder"
  arrangement "name"
end

# Add icon to dock
dock_add "/Applications/Genesis/Genesis.app" do
  all_users true
  group "Natural Sciences and Mathematics"
end
