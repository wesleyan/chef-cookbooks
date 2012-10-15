user "labuser" do
  comment "labuser"
  home "/Users/labuser"
end

group "admin" do
  members ['administrator', 'labuser']
end

cookbook_file "/tmp/host_utils.rb" do
  source "host_utils.rb" 
  mode "0700"
end

cookbook_file "/tmp/bind_to_domain.rb" do
  source "bind_to_domain.rb" 
  mode "0700"
end

cookbook_file "/tmp/set_hostname.rb" do
  source "set_hostname.rb"
  mode "0700"
end

execute "change hostname" do
  command "ruby /tmp/set_hostname.rb"
  action :run
end

execute "bind to domain" do
  command "ruby /tmp/bind_to_domain.rb"
  action :run
  returns [0,-1, 78]
end


file "/tmp/host_utils.rb" do
  action :delete
end

file "/tmp/set_hostname.rb" do
  action :delete
end

file "/tmp/bind_to_domain.rb" do
  action :delete
end

service "ScreenSharing" do
  service_name "com.apple.screensharing"
  action :start
end

execute "change login window" do
  command "defaults write /Library/Preferences/com.apple.loginwindow.plist SHOWFULLNAME -bool true"
  action :run
end