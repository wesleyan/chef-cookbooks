
# Cookbook Name:: printers
# Recipe:: dac100
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Assumes the mac.rb was already executed

# copies color/luster preferences
cookbook_file "/Library/ColorSync/Profiles/Displays/DAC100_iMac_Sept19_D65.icc" do
  mode 0644
end

cookbook_file "/Library/ColorSync/Profiles/DAC100 Spring 2013 3880 Inkpress Luster.icc" do
  mode 0644
end

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

printers "Set Default #{node['printers']['default']}" do
  name node['printers']['default']
  only_if { node['printers']['default'] }
  action :set_default
end

template "/tmp/GlobalPreferences.plist" do
  source "GlobalPreferences.plist"
  variables(
    :filename => "DAC100_iMac_Sept19_D65.icc"
  )
end

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
  users = `ls -1 /Users | grep -v Shared`.split("\n")
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
