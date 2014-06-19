# Cookbook Name:: xorg
# Recipe:: cmdr

include_recipe "apt" if [ 'debian', 'ubuntu' ].member? node[:platform]
package "xorg"
package "xorg-dev"
package "xdg-utils"
package "libxslt1.1"
#package "xserver-xorg-video-displaylink"
package "awesome"
package "libgconf2-4"
package "chromium-browser"
include_recipe "build-essential"

template "/etc/X11/xorg.conf" do
  source "xorg.conf.erb"
  owner "root"
  group "root"
  mode 0644
  fb_match = (`dmesg | grep DisplayLink`).match(/(\/dev\/fb.)/)
  variables({
              :input_event => Dir.glob('/dev/input/by-id/*USB_Touch*')[0],
              :fb_device => fb_match ? fb_match[1] : "/dev/fb1",
              :invert_x => node['xorg']['invert_x'],
              :invert_y => node['xorg']['invert_y']
            })
end

cookbook_file "/usr/share/X11/empty_cursor.xbm" do
  owner "root"
  group "root"
  mode 0644
end

directory "/root/.config/awesome" do
  owner "root"
  group "root"
  mode 0644
  recursive true
end

cookbook_file "/root/.config/awesome/rc.lua" do
  owner "root"
  group "root"
  mode 0644
end

directory "/usr/lib/X11/xinit" do
  owner "root"
  group "root"
  mode "0755"
  recursive true
end

cookbook_file "/usr/lib/X11/xinit/xinitrc" do
  owner "root"
  group "root"
  source "xinitrc.cmdr"
  mode 0755
end

cookbook_file "/etc/init/x.conf" do
  owner "root"
  group "root"
  mode 0644
end

cookbook_file "/tmp/fonts.zip"

execute "Install fonts" do
  user "root"
  command "cd /usr/share/fonts && unzip /tmp/fonts.zip"
  returns [0, 1, 127]
  not_if "ls /usr/share/fonts/MyriadPro"
end

service "x" do
  supports :restart => true, :reload => true, :status => true
  action :enable
  provider Chef::Provider::Service::Upstart
end

cron "wake_screen" do
  command "DISPLAY=:0.0 xset dpms force on"
end
