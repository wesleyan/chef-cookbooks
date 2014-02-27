#
# Cookbook Name:: roomtrol-randoms
# Recipe:: default

include_recipe "apt" if [ 'debian', 'ubuntu' ].member? node[:platform]
package "curl"
package "git-core"
package "unzip"
package "avahi-daemon"
package "avahi-utils"
package "libavahi-compat-libdnssd-dev"
package "vim"
package "mg"
package "htop"
package "autoconf"
package "libtool"
package "libfcgi-dev"
package "snmpd" # zenoss monitoring
include_recipe "erlang"

include_recipe "build-essential"

service "rsyslog" do
  supports :restart => true, :reload => true, :status => true
  action :enable
end

bash "install cgi" do
  user "root"
  cwd "/usr/local/src"
  code <<-EOH
  git clone git://github.com/gnosek/fcgiwrap.git;
  cd /usr/local/src/fcgiwrap;
  autoreconf -i;
  ./configure;
  make;
  mv fcgiwrap /usr/local/bin;
  chmod +x /usr/local/bin/fcgiwrap;
  rm -rf /usr/local/src/fcgiwrap
  EOH
end

cookbook_file "/etc/init.d/fcgiwrap" do
  owner "root"
  group "root"
  mode 0755
end

cookbook_file "/etc/rc.local" do
  owner "root"
  group "root"
  mode 0755
end

#cookbook_file "/etc/grub.d/00_header" do
#  owner "root"
#  group "root"
#  mode 0644
#end
#
#cookbook_file "/etc/default/grub" do
#  owner "root"
#  group "root"
#  mode 0644
#end
#
#bash "regenerate grub config files" do
#  user "root"
#  code "update-grub"
#end

cookbook_file "/etc/logrotate.d/roomtrol" do
  owner "root"
  group "root"
  mode 0644
end 


directory "/home/roomtrol/.ssh" do
  owner "roomtrol"
  group "roomtrol"
  action :create
  mode 0700
end

directory "/var/www" do
  owner "roomtrol"
  group "roomtrol"
  action :create
end

cookbook_file "/home/roomtrol/.ssh/authorized_keys" do
  owner "roomtrol"
  group "roomtrol"
  mode 0644
end

cookbook_file "/etc/udev/rules.d/91-udev-fb.rules" do
  owner "root"
  group "root"
  mode 0644
end

cookbook_file "/etc/init/iguanaIR.conf" do
  owner "root"
  group "root"
  mode 0644
end

cookbook_file "/etc/init/lirc.conf" do
  owner "root"
  group "root"
  mode 0644
end

cookbook_file "/etc/init/roomtrol-daemon.conf" do
  owner "root"
  group "root"
  mode 0644
end

cookbook_file "/usr/local/bin/bootup_roomtrol" do
  owner "root"
  group "root"
  mode 0755
end

cookbook_file "/etc/avahi/services/roomtrol.service" do
  owner "root"
  group "root"
  mode 0755
end

cookbook_file "/etc/modprobe.d/blacklist.conf" do
  owner "root"
  group "root"
  mode 0755
end

cookbook_file "/etc/snmp/snmpd.conf" do
  owner "root"
  group "root"
  mode 0755
end

cookbook_file "/etc/default/snmpd" do
  owner "root"
  group "root"
  mode 0755
end

cookbook_file "/etc/rsyslog.conf" do
  owner "root"
  group "root"
  mode 0755
  notifies :restart, "service[rsyslog]"
end

#cookbook_file '/etc/apt/sources.list.d/couchdb.list' do
#  owner "root"
#  group "root"
#  mode 0644
#end
#
#execute "apt-get-update" do
#  command "apt-get update"
#end

#package "grub-pc" do
#  action :upgrade
#  options "-o Dpkg::Options::='--force-confold'"
#end


