
# Cookbook Name:: printers
# Recipe:: dac100
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#   http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Assumes the mac.rb was already executed
#
# Install Epson drivers
dmg_package "EPSON Printer Drivers" do
  app "EPSONPrinterDrivers"
  volumes_dir "EPSON Printer Drivers"
  dmg_name "EPSONPrintDrivers2.16"
  source "http://ims-chef.wesleyan.edu/os_x/epson_printer/EPSONPrintDrivers2.16.dmg"
  checksum "4101430d39fd963a9316a2869bfb52e2b845219448d99265492cdf8e5f49fd52"
  action :install
  type "pkg"
  package_id "com.apple.pkg.EPSONPrinterDrivers"
  version "2.16.0"
end

# Install Epson 3880 driver
dmg_package "Epson 3880 Driver" do
  app "Epson Printer"
  volumes_dir "Epson Printer"
  dmg_name "epson3880-9.17"
  type "pkg"
  source "http://ims-chef.wesleyan.edu/os_x/epson_printer/epson3880-9.17.dmg"
  checksum "baf7b216a760e4c643abf7db974a70f71324f667e72b2ba693044a42647a8d40"
  action :install
  package_id "com.epson.pkg.ijpdrv.epsonstyluspro3880.w.USBClassDriver_107_and_later"
  version "9.17.0"
end

# Install Epson 9800 driver
dmg_package "Epson 9800 Driver" do
  app "Epson Printer"
  volumes_dir "epson15891_sp7800_9800_printer_driver_917"
  dmg_name "epson9800-9.17"
  type "pkg"
  source "http://ims-chef.wesleyan.edu/os_x/epson_printer/epson9800-9.17.dmg"
  checksum "d6c08d10037a40940b687b096e8ed4f81c43f8bf63bc686b89d50ef7e95d9a9a"
  action :install
  package_id "com.epson.pkg.ijpdrv.styluspro9800.w.USBClassDriver_107_and_later"
  version "9.17.0"
end

# Install Epson 9900 driver
dmg_package "Epson 9900 Driver" do
  app "Epson Printer"
  volumes_dir "epson15900_sp7900_9900_printer_driver_917"
  dmg_name "epson9900-9.17"
  type "pkg"
  source "http://ims-chef.wesleyan.edu/os_x/epson_printer/epson9900-9.17.dmg"
  checksum "b442ffa414453e9809bc60e18056ba2cb834cdf6fcb66b839d2b0b1fd31bdbe3"
  action :install
  package_id "com.epson.pkg.ijpdrv.styluspro9900.w.USBClassDriver_107_and_later"
  version "9.17.0"
end

# Install HP Printer Drivers
dmg_package "HP Printer Drivers" do
  app "HewlettPackardPrinterDrivers"
  volumes_dir "HewlettPackard Printer Drivers"
  dmg_name "HPPrinterDriver2.16.1"
  type "pkg"
  source "http://ims-chef.wesleyan.edu/os_x/hp_printer/HPPrinterDriver2.16.1.dmg"
  checksum "589a697ea8186600140b5cf99ef40e92a4368f1681ba3198b5363cee47f78dae"
  action :install
  #package_id ""
  #version "2.16.1"
end 

# Copies color/luster preferences
cookbook_file "/Library/ColorSync/Profiles/Displays/DAC100_iMac_Sept19_D65.icc" do
  mode 0644
end

cookbook_file "/Library/ColorSync/Profiles/DAC100 Spring 2013 3880 Inkpress Luster.icc" do
  mode 0644
end

# Setup DAC100-specific printers.
printers "DAC100-E3880-1" do
  model "/Library/Printers/PPDs/Contents/Resources/EPSON Epson Stylus Pro 3880.gz"
  ip "DAC100-E3880-1.class.wesleyan.edu"
end

printers "DAC100-E3880-2" do
  model "/Library/Printers/PPDs/Contents/Resources/EPSON Epson Stylus Pro 3880.gz"
  ip "DAC100-E3880-2.class.wesleyan.edu"
end

printers "DAC100-E3880-3" do
  model "/Library/Printers/PPDs/Contents/Resources/EPSON Epson Stylus Pro 3880.gz"
  ip "DAC100-E3880-3.class.wesleyan.edu"
end

printers "DAC100-9800" do
  model "/Library/Printers/PPDs/Contents/Resources/EPSON Stylus Pro 9800.gz"
  ip "DAC100-E9800.class.wesleyan.edu"
end

printers "DAC100-9900" do
  model "/Library/Printers/PPDs/Contents/Resources/EPSON Stylus Pro 9900.gz"
  ip "epson-9900.art.wesleyan.edu"
end

# Really fucking hacky, uses dac100mac-shadow to share out USB printer to the rest of the machines.
# Installs base printer on dac100mac-shadow, not finished at the moment.
#printers "DAC100-HPDJ510" do
#  model "/Library/Printers/PPDs/Contents/Resources/HP Designjet 510 24in.ppd.gz"
#  usb "HP%20Designjet%20510%2024in%20Printer%20(CH336A)%20%40%20dac100mac-shadow._ipps._tcp.local."
#  only_if { node['printers']['dac100notshadow']}
#end

# lpadmin -p DAC100-HPDJ510 -v "dnssd://HP%20Designjet%20510%2024in%20Printer%20(CH336A)%20%40%20dac100mac-shadow._ipps._tcp.local." -m "/Library/Printers/PPDs/Contents/Resources/HP Designjet 510 24in.ppd.gz" -D DAC100-HPDJ510 -E
                
# Installs dac100mac-shadow's shared printer on everything else in DAC100.  Does actually work.
#printers "DAC100-HPDJ510" do
#  model "/Library/Printers/PPDs/Contents/Resources/HP Designjet 510 24in.ppd.gz"
#  share "HP%20Designjet%20510%2024in%20Printer%20(CH336A)%20%40%20dac100mac-shadow._ipps._tcp.local."
#end

# Set printers as default.
printers "Set Default #{node['printers']['default']}" do
  name node['printers']['default']
  only_if { node['printers']['default'] }
  action :set_default
end

# Insert color profile.
template "/tmp/GlobalPreferences.plist" do
  source "GlobalPreferences.plist"
  variables(
    :filename => "DAC100_iMac_Sept19_D65.icc"
  )
end

# Set printer preferences for each user.
ruby_block "Set Global Preferences" do
  block do
   uuid = `ls "/System/Library/User Template/English.lproj/Library/Preferences/ByHost"`.split[0].split(".")[-2] 
   system("plutil -convert binary1 -o '/System/Library/User Template/English.lproj/Library/Preferences/ByHost/.GlobalPreferences.#{uuid}.plist' /tmp/GlobalPreferences.plist")
   get_users_list.each do |user|
     if user.uid >= 500
       system("plutil -convert binary1 -o '#{user.user_dir}/Library/Preferences/ByHost/.GlobalPreferences.#{uuid}.plist' /tmp/GlobalPreferences.plist && chown #{user.username} '#{user.user_dir}/Library/Preferences/ByHost/.GlobalPreferences.#{uuid}.plist'")
     end
   end
  end
end

def get_users_list
  users = Dir.entries('/Users').select {|entry| not (entry == '.' || entry == '..' || entry == 'Shared') }
  users_list = Array.new
  for user in users do
    userObject = UserModule::MacUser.new
    userObject.uid = `id -u -r #{user}`.to_i
    userObject.username = user
    userObject.user_dir = "/Users/#{user}"
    users_list.push(userObject)
  end
  users_list
end
