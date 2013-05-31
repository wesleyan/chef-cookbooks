#
# Cookbook Name:: xorg-dashboard
# Recipe:: default

include_recipe "apt" if [ 'debian', 'ubuntu' ].member? node[:platform]
package "xorg"
package "xorg-dev"
package "xdg-utils"
package "libxslt1.1"
package "xserver-xorg-video-nouveau"
package "awesome"
package "libgconf2-4"
package "chromium-browser"
package "ntp"
include_recipe "build-essential"

template "/etc/X11/xorg.conf" do
  source "xorg.conf.erb"
  owner "root"
  group "root"
  mode 0644
  fb_match = (`dmesg | grep DisplayLink`).match(/(\/dev\/fb.)/)
  variables({
              :input_event => Dir.glob('/dev/input/by-id/*USB_Touch*')[0],
              :fb_device => fb_match ? fb_match[1] : "/dev/fb0",
              :invert_x => node['xorg']['invert_x'],
              :invert_y => node['xorg']['invert_y']
            })
end

cookbook_file "/usr/share/X11/empty_cursor.xbm" do
  owner "root"
  group "root"
  mode 0755
end

directory "/home/pi/.config/awesome" do
  owner "pi"
  group "pi"
  mode 0755
  recursive true
end

cookbook_file "/home/pi/.config/awesome/rc.lua" do
  owner "pi"
  group "pi"
  mode 0755
end

directory "/home/pi/.config/chromium" do
  owner "pi"
  group "pi"
  mode 0755
  action :create
  recursive true
end

cookbook_file "/etc/profile" do
  owner "root"
  group "root"
  mode 0644
end

cookbook_file "/etc/crontab" do
  owner "root"
  group "root"
  mode 0644
end

cookbook_file "/etc/inittab" do
  owner "root"
  group "root"
  mode 0644
end

directory "/etc/X11/xinit" do
  owner "root"
  group "root"
  mode 0755
  recursive true
end

cookbook_file "/etc/X11/xinit/xinitrc" do
  owner "root"
  group "root"
  mode 0755
end

cookbook_file "/tmp/fonts.zip"

execute "Install fonts" do
  user "root"
  command "cd /usr/share/fonts && unzip /tmp/fonts.zip"
  returns [0, 1, 127]
  not_if "ls /usr/share/fonts/MyriadPro"
end

service "ntp" do
  supports :restart => true, :reload => true, :status => true
  action :start
end

cron "wake_screen" do
  command "DISPLAY=:0.0 xset dpms force on"
end