#
# Cookbook Name:: system_preferences
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#


# enable keyboard, disable TimeMachine, Wireless
cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.apple.systemuiserver.plist"

# Check if software update checking is enabled and turn it off if so.
execute "Disable Software Update checks" do
  command "/usr/sbin/softwareupdate --schedule off"
  not_if "/usr/sbin/softwareupdate --schedule | grep off"
end

# Turn AirPort off
execute "networksetup -setairportpower en1 off"

## Use our custom sshd config, which restricts remote logins to administrator account only
cookbook_file "/etc/sshd_config" do
  mode 0644
end

## Modify Remote Desktop settings
execute "Remote Desktop preferences" do
  command "/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate -configure -access -on -users labuser -restart -agent -privs -all -clientopts -setvncpw #Cl053th3l00p!1"
end

# This block of code pulls down the cscreen binary and our resolution list; using them to set the screen resolution on a per-room basis.
cookbook_file "/tmp/cscreen"
cookbook_file "/tmp/Resolutions.txt"
ruby_block "Set screen resolution" do
  block do
    resSettings = ::IO.read("/tmp/Resolutions.txt").split("\n").map { |info| info.split(":") }
    fqdn = `hostname`
    resSettings.each do |opt|
      if fqdn =~ Regexp.new(opt[0])
        cmd = "/tmp/cscreen -x #{opt[1]} -y #{opt[2]}"
        cmd << " -r #{opt[3]}" if opt[3] != "NA"
        system(cmd)
        break
      end
    end
  end
end

# Set labuser password
system_preferences_password "labuser" do
    password "#Cl0s3th3l00p!1"
end

