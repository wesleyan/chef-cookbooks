#
# Cookbook Name:: apple_ilife
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Install iLife '11 base package
dmg_package "iLife11.dmg" do
  app "iLife11"
  volumes_dir "iLife11"
  dmg_name "iLife11"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_ilife/iLife11.dmg"
  checksum "4a1d8f7b43ec4d10a4660f03bc1b0f2386d32fe3a10dc179e53c2ae40cbe61bd"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iLifeCookie"
end

# Install latest GarageBand update
dmg_package "GarageBand6.0.5Update.dmg" do
  app "GarageBand6.0.5Update"
  volumes_dir "GarageBand 6.0.5 Update (Manual)"
  dmg_name "GarageBand6.0.5Update"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_ilife/GarageBand6.0.5Update.dmg"
  checksum "cc76898d307a9e41969de19ec42c369e9c1392d617149195b169d7242f45e62b"
  action :install
  type "pkg"
  package_id "com.apple.pkg.GarageBand6.0.5Update"
end

# Install latest iDVD update
dmg_package "iDVD7.1.2Update.dmg" do
  app "iDVD7.1.2Update"
  volumes_dir "iDVD 7.1.2 Update"
  dmg_name "iDVD7.1.2Update"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_ilife/iDVD7.1.2Update.dmg"
  checksum "6915ee582e54461c6416bbb5d94b98795d2879164d03a4a9f8537b3d4851532a"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iDVD7.1.2Update"
end

# Install latest iMovie update
dmg_package "iMovie9.0.8Update.dmg" do
  app "iMovie9.0.8Update"
  volumes_dir "iMovie 9.0.8"
  dmg_name "iMovie9.0.8Update"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_ilife/iMovie9.0.8Update.dmg"
  checksum "2466ed9943e7784da057dffdb6e6348c8cf7bb9cded9ba03d8c88b0e11ce80da"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iMovie9.0.8Update"
end

# Install base iPhoto update (required for current updates)
dmg_package "iPhoto9.1Update.dmg" do
  app "iPhoto9.1Update"
  volumes_dir "iPhoto 9.1 Update"
  dmg_name "iPhoto9.1Update"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_ilife/iPhoto9.1Update.dmg"
  checksum "4a2c8515aa24d77606b3b65ab010b32ade0d7a9775df432ffa8afe655977d7c7"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iPhoto9.1Update"
end

# Install latest iPhoto update
dmg_package "iPhoto9.4.2Update.dmg" do
  app "iPhoto9.4.2Update"
  volumes_dir "iPhoto 9.4.2"
  dmg_name "iPhoto9.4.2Update"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_ilife/iPhoto9.4.2Update.dmg"
  checksum "d1713efac13a7686a36bc99aa3a0babd1195eb9849a5c22d82f22621791adda0"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iPhoto9.4.2Update"
end

# Install latest iWeb update
dmg_package "iWeb304.dmg" do
  app "iWeb_304"
  volumes_dir "iWeb 3.0.4 Update (Manual)"
  dmg_name "iWeb304"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_ilife/iWeb304.dmg"
  checksum "099daaa5569adf5387583ea8af1c0d9770373f6bc832e7072151304f9200df04"
  action :install
  type "pkg"
  package_id "com.apple.pkg.iWeb_304"
end

# Install latest Digital Camera RAW update
dmg_package "RAWCameraUpdate4.03.dmg" do
  app "RAWCameraUpdate4"
  volumes_dir "Digital Camera RAW Compatibility Update 4.03"
  dmg_name "RAWCameraUpdate4"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_ilife/RAWCameraUpdate4.03.dmg"
  checksum "a21895288af29c336f78833c2ec0a8d3bfff3cf715b1f01bce7ce4bf9bc78c8d"
  action :install
  type "pkg"
  package_id "com.apple.pkg.RAWCameraUpdate4"
end