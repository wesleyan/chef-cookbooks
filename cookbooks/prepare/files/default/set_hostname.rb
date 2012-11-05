#!/usr/bin/ruby
path = File.expand_path(File.dirname(__FILE__))
require "#{path}/host_utilities.rb"

puts "Reverse resolving IP address #{machine_ip}"

def execute_scutil (parameter, name) 
  puts "Changing #{parameter} to #{name}"
  command = "sudo scutil --set #{parameter} #{name}"
  print `#{command} 2>&1`
  $?.exitstatus
end


def flush_cache 
  puts "Flushing DNS cache."
  command = "dscacheutil -flushcache"
  `#{command}`
  $?.exitstatus
end

fqdn = hostname_for_ip machine_ip
hostname = prefix fqdn

puts "Found hostname: #{hostname} (FQDN: #{fqdn})"

hn = execute_scutil("HostName", fqdn)
cn = execute_scutil("ComputerName", hostname)
lhn = execute_scutil("LocalHostName", hostname)
fc = flush_cache

exit (hn || cn || lhn || fc)






