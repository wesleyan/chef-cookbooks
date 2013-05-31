#
# Cookbook Name:: apple_ilife
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install iLife '11 base package
dmg_package "iLife '11" do
  app "iLife11"
  volumes_dir "iLife11"
  dmg_name "iLife11"
  source "http://ims-chef.wesleyan.edu/os_x/apple_ilife/iLife11.dmg"
  checksum "4a1d8f7b43ec4d10a4660f03bc1b0f2386d32fe3a10dc179e53c2ae40cbe61bd"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iLifeCookie"
end

# Install latest GarageBand update
dmg_package "GarageBand Update" do
  app "GarageBand6.0.5Update"
  volumes_dir "GarageBand 6.0.5 Update (Manual)"
  dmg_name "GarageBand6.0.5Update"
  source "http://ims-chef.wesleyan.edu/os_x/apple_ilife/GarageBand6.0.5Update.dmg"
  checksum "cc76898d307a9e41969de19ec42c369e9c1392d617149195b169d7242f45e62b"
  action :install
  type "pkg"
  package_id "com.apple.pkg.GarageBand6.0.5Update"
end

# Install latest iDVD update
dmg_package "iDVD Update" do
  app "iDVD7.1.2Update"
  volumes_dir "iDVD 7.1.2 Update"
  dmg_name "iDVD7.1.2Update"
  source "http://ims-chef.wesleyan.edu/os_x/apple_ilife/iDVD7.1.2Update.dmg"
  checksum "6915ee582e54461c6416bbb5d94b98795d2879164d03a4a9f8537b3d4851532a"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iDVD7.1.2Update"
end

# Install latest iMovie update
dmg_package "iMovie Update" do
  app "iMovie9.0.9Update"
  volumes_dir "iMovie 9.0.9"
  dmg_name "iMovie9.0.9Update"
  source "http://ims-chef.wesleyan.edu/os_x/apple_ilife/iMovie9.0.9Update.dmg"
  checksum "7d1d07f8037a6622ed34c58b37bcd477414da77db0bc5a0df4be8b84d13d4aac"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iMovie9.0.9Update"
end

# Install base iPhoto update (required for current updates)
dmg_package "iPhoto Core Update" do
  app "iPhoto9.1Update"
  volumes_dir "iPhoto 9.1 Update"
  dmg_name "iPhoto9.1Update"
  source "http://ims-chef.wesleyan.edu/os_x/apple_ilife/iPhoto9.1Update.dmg"
  checksum "4a2c8515aa24d77606b3b65ab010b32ade0d7a9775df432ffa8afe655977d7c7"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iPhoto9.1Update"
end

# Install latest iPhoto update
dmg_package "iPhoto Update" do
  app "iPhoto9.4.3Update"
  volumes_dir "iPhoto 9.4.3"
  dmg_name "iPhoto9.4.3Update"
  source "http://ims-chef.wesleyan.edu/os_x/apple_ilife/iPhoto9.4.3Update.dmg"
  checksum "faca08d74cd7f3db7c0e4842d4292b60b75e48df587369ed9d6e7a5a39a012a9"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iPhoto9.4.3Update"
end

# Install latest iWeb update
dmg_package "iWeb Update" do
  app "iWeb_304"
  volumes_dir "iWeb 3.0.4 Update (Manual)"
  dmg_name "iWeb304"
  source "http://ims-chef.wesleyan.edu/os_x/apple_ilife/iWeb304.dmg"
  checksum "099daaa5569adf5387583ea8af1c0d9770373f6bc832e7072151304f9200df04"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iWeb_304"
end

# Install latest Digital Camera RAW update
dmg_package "RAW Camera Update" do
  app "RAWCameraUpdate4"
  volumes_dir "Digital Camera RAW Compatibility Update 4.05"
  dmg_name "RAWCameraUpdate4.05"
  source "http://ims-chef.wesleyan.edu/os_x/apple_ilife/RAWCameraUpdate4.05.dmg"
  checksum "7ec55e8ab33010fb31a77e4107043868abf6650c3ad16f072da112492dde36d1"
  action :install
  type "pkg"
  package_id "com.apple.pkg.RAWCameraUpdate4"
  version "4.0.5"
end

cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.apple.iPhoto.plist"