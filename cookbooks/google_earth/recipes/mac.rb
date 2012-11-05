dmg_package "Google Earth" do
  app "Google Earth"
  volumes_dir "Google Earth"
  dmg_name "GoogleEarthMac-Intel-7.0.1.dmg"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/google_earth-7/GoogleEarthMac-Intel-7.0.1.dmg"
  checksum "6220fb17559f8ba8666908e5124812a16ac249f0163efd3c724e59bdf2788b31"
  action :install
  unmount false
  type "app"
end

dmg_package "Google Earth Web Plug-in" do
  app "Google Earth Web Plug-in.plugin"
  volumes_dir "Google Earth"
  dmg_name "GoogleEarthMac-Intel-7.0.1.dmg"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/google_earth-7/GoogleEarthMac-Intel-7.0.1.dmg"
  checksum "6220fb17559f8ba8666908e5124812a16ac249f0163efd3c724e59bdf2788b31"
  action :install
  destination "/Library/Internet Plug-Ins/"
  type "dir"
  unmount true
#  already_mounted true
end