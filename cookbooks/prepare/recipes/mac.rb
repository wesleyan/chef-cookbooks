# Create our labuser service account
# user "labuser" do
#   comment "labuser"
#   home "/Users/labuser"
#   action :create
# end

# Create our admin account (right now just ensures it exists, as chef does not support creating accounts in 10.8 yet)
user "administrator" do
  comment "administrator"
  home "/Users/administrator"
end

# Ensures our support accounts are admins
group "admin" do
  members ['administrator', 'labuser']
  append true
end

# Create our admin .ssh directory so we can copy our authorized keys to it.
directory "/Users/administrator/.ssh" do
  mode "0744"
  owner "administrator"
  group "staff"
  recursive true
end

# Copy our authorized SSH keys to the administrator account.
cookbook_file "/Users/administrator/.ssh/authorized_keys" do
  owner "administrator"
  group "staff"
  mode "0744"
end

# Writes the client configuration for chef to /etc/chef.
cookbook_file "/etc/chef/client.rb" do
  owner "root"
  group "wheel"
  mode "0644"
end

# Copies one of our dependency scripts to a temporary directory.
cookbook_file "/tmp/host_utilities.rb" do
  mode "0700"
end

# Copies our domain binding script to a temporary directory.
cookbook_file "/tmp/bind_to_domain.rb" do
  only_if { node["prepare"]["bind"] }
  mode "0700"
end

# Copies our hostname script to a temporary directory.
cookbook_file "/tmp/set_hostname.rb" do
  mode "0700"
end

# Executes a ruby scripts that renames the machine based on it's assigned FQDN.
execute "change hostname" do
  command "ruby /tmp/set_hostname.rb"
  returns [0, 1]
end

# Binds the machine to the domain, using a ruby script that uses AD command line tools to bind via ghostuser credentials
execute "bind to domain" do
  command "ruby /tmp/bind_to_domain.rb"
  only_if { node["prepare"]["bind"] }
  returns [0,-1, 1, 78]
end

# Disables OS X' Gatekeeper functionality, allowing us to run unsigned apps (still necessary at this point)
execute "spctl disable" do
  command "spctl --master-disable"
end

# Enable ssh if only if it is not enabled.
execute "enable ssh" do 
  command "/usr/sbin/systemsetup -setremotelogin on"
  not_if "/usr/sbin/systemsetup -getremotelogin | /usr/bin/grep On"
end

# Prevent machine from sleeping if a remote terminal is active, needed for remote chef commands to function, the -c option means the setting is only in effect when a machine is plugged into power.
execute "enable ttyskeepawake" do 
  command "/usr/bin/pmset -c ttyskeepawake 1"
  not_if "/usr/bin/pmset -g | /usr/bin/grep 'ttyskeepawake        1'"
end

# Change login window type to standard user/password entry screen.
execute "change login window" do
  command "defaults write /Library/Preferences/com.apple.loginwindow.plist SHOWFULLNAME -bool true"
end

# Copy finder preferences to default user profile.
cookbook_file "/System/Library/User Template/English.lproj/Library/Preferences/com.apple.finder.plist"

# This script automatically deletes users based on the days the account has been inactive.  It can be enabled and controlled with an attribute on a per-role basis.
ruby_block "Delete inactive users" do
  block do
    days = node["prepare"]["inactivity"] # number of days until a user account is removed from the system
    if days != 0
      Dir.entries("/Users").each do |user|
        if not (user =~ /^\./) and user != "Shared" and user != "administrator" and user != "labuser" and File.atime("/Users/#{user}") < (Time.now - days*(60*60*24))
          system("dscl  . delete /Users/#{user}")
          system("rm -rf /Users/#{user}")
        end
      end
    end
  end
end
