#!/usr/bin/ruby

require 'socket'
require 'resolv'

def machine_ip
    orig, Socket.do_not_reverse_lookup = Socket.do_not_reverse_lookup, true  # turn off reverse DNS resolution temporarily
    UDPSocket.open do |s|
      s.connect '64.233.187.99', 1
      s.addr.last 
    end
  ensure
    Socket.do_not_reverse_lookup = orig
end

def hostname_for_ip (ip)
    Resolv.getname(ip) 
end

def prefix (name) 
    name.slice(0...(name.index('.')))
end

def truncate (name) 
  name.slice(0..14)
end