#
# Cookbook Name:: cmdr-defaults
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

#include_recipe "users"

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

cookbook_file "/etc/logrotate.d/cmdr" do
  owner "root"
  group "root"
  mode 0644
end 


#directory "/home/cmdr/.ssh" do
#  owner "cmdr"
#  group "cmdr"
#  action :create
#  mode 0700
#end

directory "/var/www" do
  owner "vagrant"
  group "vagrant"
  action :create
end

#cookbook_file "/home/cmdr/.ssh/authorized_keys" do
#  owner "cmdr"
#  group "cmdr"
#  mode 0644
#end

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

cookbook_file "/etc/init/cmdr-daemon.conf" do
  owner "root"
  group "root"
  mode 0644
end

cookbook_file "/usr/local/bin/bootup_cmdr" do
  owner "root"
  group "root"
  mode 0755
end

cookbook_file "/etc/avahi/services/cmdr.service" do
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

#users_manage "sysadmin" do
#  group_id 2300
#  action [:remove, :create]
#end
