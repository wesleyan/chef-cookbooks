#
# Cookbook Name:: system_preferences
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#


## enable keyboard, disable TimeMachine, Wireless
cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.apple.systemuiserver.plist"

execute "Disable Software Update checks" do
  command "/usr/sbin/softwareupdate --schedule off"
  not_if "/usr/sbin/softwareupdate --schedule | grep off"
end


## Use our custom sshd config, which restricts remote logins to administrator account only
cookbook_file "/etc/sshd_config" do
  mode 0644
end

cookbook_file "/tmp/com.apple.PowerManagement.plist"
chef_gem 'plist'
ruby_block "Set Power Options" do
  block do
    require 'plist'
    hash = Plist::parse_xml("/tmp/com.apple.PowerManagement.plist")
    hash['Custom Profile']['AC Power']['Automatic Restart On Power Loss'] = 0
    hash['Custom Profile']['AC Power']['System Sleep Timer'] = 30
    hash['Custom Profile']['AC Power']['Display Sleep Timer'] = 15
    f = ::File.open("/Library/Preferences/SystemConfiguration/com.apple.PowerManagement.plist","w")
    f.puts Plist::Emit.dump(hash)
    f.close
  end
end