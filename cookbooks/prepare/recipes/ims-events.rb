# user "labuser" do
#   comment "labuser"
#   home "/Users/labuser"
#   action :create
# end

user "administrator" do
  comment "administrator"
  home "/Users/administrator"
  action :create
end

group "admin" do
  members ['administrator']
  append true
end


directory "/Users/administrator/.ssh" do
  mode "0744"
  owner "administrator"
  group "staff"
  action :create
  recursive true
end

cookbook_file "/Users/administrator/.ssh/authorized_keys" do
  source "authorized_keys"
  owner "administrator"
  group "staff"
  mode "0744"
end

# cookbook_file "/etc/sudoers" do
#   source "sudoers"
#   owner "root"
#   group "wheel"
#   mode "0440"
# end

cookbook_file "/etc/chef/client.rb" do
  source "client.rb"
  owner "root"
  group "wheel"
  mode "0644"
end

# Download scripts
cookbook_file "/tmp/host_utilities.rb" do
  source "host_utilities.rb" 
  mode "0700"
end

#cookbook_file "/tmp/bind_to_domain.rb" do
#  source "bind_to_domain.rb" 
#  mode "0700"
#end

cookbook_file "/tmp/set_hostname.rb" do
  source "set_hostname.rb"
  mode "0700"
end

# Run scripts
execute "change hostname" do
  command "ruby /tmp/set_hostname.rb"
  returns [0, 1]
  action :run
end

#execute "bind to domain" do
#  command "ruby /tmp/bind_to_domain.rb"
#  action :run
#  returns [0,-1, 1, 78]
#end

execute "spctl disable" do
  command "spctl --master-disable"
  action :run
end

execute "set sleep time to never" do
  command "pmset sleep 0"
  action :run
end

execute "set display sleep time to never" do
  command "pmset displaysleep 0"
  action :run
end

# Delete temporary files
file "/tmp/host_utilities.rb" do
 action :delete
end

file "/tmp/set_hostname.rb" do
  action :delete
end

#file "/tmp/bind_to_domain.rb" do
#  action :delete
#end

# Change login window to user/pass
execute "change login window" do
  command "defaults write /Library/Preferences/com.apple.loginwindow.plist SHOWFULLNAME -bool true"
  action :run
end