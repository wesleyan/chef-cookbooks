#!/usr/bin/ruby

path = File.expand_path(File.dirname(__FILE__))
require "#{path}/host_utilities.rb"

username = "ghostuser"
password = "r0ck3tm@n"
preferred_server = "palemale.wesad.wesleyan.edu"
groups = "domain admins,enterprise admins,domain users"

if(hostname_for_ip machine_ip == "")
  hostname = truncate prefix "lannister.class.wesleyan.edu"
else
  hostname = truncate prefix hostname_for_ip machine_ip
end


print "Binding #{hostname} to wesad.wesleyan.edu: "
 
command =  "sudo dsconfigad -add wesad.wesleyan.edu -username " \
"ghostuser -password #{password} -preferred #{preferred_server} " \
 "-groups \"#{groups}\" -force " \
 "-computer #{hostname}"
 
puts `#{command} 2>&1`
 
case $?.exitstatus 
  
when 0
  puts "Succeeded."
  exit
else
  puts "Failed: Error #{$?.exitstatus}"
  exit $?.exitstatus
end