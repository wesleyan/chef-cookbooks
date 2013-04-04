#
# Cookbook Name:: apple_logic_pro
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install base Logic package, license file captured in pkg by Composer
dmg_package "Logic Pro" do
  app "Apple Logic Pro"
  volumes_dir "Apple Logic Pro"
  dmg_name "apple_logic_pro-9.1.8"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_logic_pro/apple_logic_pro-9.1.8.dmg"
  checksum "57947e2b74545306ddf0b3edb6cd5a17445483bb719fcecc1ec1e739fea6c3df"
  action :install
  type "pkg"
  package_id "com.apple.pkg.Logic.Pro"
  version "9.1.8"
end

# Install additional content
dmg_package "Logic Pro Additional Content" do
  app "Logic Additional Content"
  volumes_dir "Logic Additional Content"
  dmg_name "apple_logic_pro_additional_content-9"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_logic_pro/apple_logic_pro_additional_content-9.dmg"
  checksum "062d56efcea5accd4d18b3f5847d05fe0fa00c820242f7779fb90febf4f7ba70"
  action :install
  type "pkg"
  package_id "com.apple.pkg.Logic.Additional.Content"
  version "9.0.0"
end

# Install audio content
dmg_package "Logic Pro Audio Content" do
  app "Logic Audio Content"
  volumes_dir "Logic Audio Content"
  dmg_name "apple_logic_pro_audio_content-9"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_logic_pro/apple_logic_pro_audio_content-9.dmg"
  checksum "c397de95fd5361c3b45db7c37a457bd295619904a249d9ebf3724b3dbcc67aaf"
  action :install
  type "pkg"
  package_id "com.apple.pkg.Logic.Audio.Content"
  version "9.0.0"
end

# Install jam pack content
dmg_package "Logic Pro Jam Pack" do
  app "Logic Jam Pack"
  volumes_dir "Logic Jam Pack"
  dmg_name "apple_logic_pro_jam_pack-9"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_logic_pro/apple_logic_pro_jam_pack-9.dmg"
  checksum "a9eab068b60935dc78e321cfc1a8e9f9d5c6f9136cfc5ba1a4c84272d63d77d9"
  action :install
  type "pkg"
  package_id "com.apple.pkg.Logic.Jam.Pack"
  version "9.0.0"
end