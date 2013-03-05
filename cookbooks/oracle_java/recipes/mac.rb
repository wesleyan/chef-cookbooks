#
# Cookbook Name:: java
# Recipe:: mac
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#
# Installs system-level Java 6 Runtime for applications, disables Java 6 web plug-in
dmg_package "JavaForOSX2013-001" do
  app "JavaForOSX"
  volumes_dir "Java for OS X 2013-001"
  dmg_name "JavaForOSX2013-001"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/apple_java/JavaForOSX2013-001.dmg"
  checksum "5c6f709b747a9c067580accf260a18cadba13ad16203adf8238929b5b2869f8b"
  action :install
  type "pkg"
  package_id "com.apple.pkg.JavaForMacOSX107"
end

# Installs Java 7 web plug-in for browsers
dmg_package "jre-7u15-macosx-x64.dmg" do
  app "Java 7 Update 15"
  volumes_dir "Java 7 Update 15"
  dmg_name "jre-7u15-macosx-x64"
  source "http://baratheon.class.wesleyan.edu/os_x-10.8/oracle_java/jre-7u15-macosx-x64.dmg"
  checksum "62be342a4ed754f14fad58dbe2ed22820971f271840beb685e232631293c8e96"
  action :install
  type "pkg"
  package_id "com.oracle.jre"
end

chef_gem "plist"
ruby_block "updateJavaVersion" do
  block do
    require 'plist'
    # calls java -version and parses it for the version information, for some reason java writes to stderr
    # so we redirect STDERR to STDOUT
    # also, Gem::Version does not understand '_', so we replace it with '.'
    v = `java -version 2>&1`.split("\n")[0].split[-1][1...-1].gsub('_','.')
    # converts the plist to xml format and parses it
    currPKG = Plist::parse_xml(`plutil -convert xml1 -o - /var/db/receipts/com.oracle.jre.plist`)
    # in some instances parse_xml does not work properly and returns a string, if that is what happens, just parse it again
    currPKG = Plist::parse_xml(currPKG) if (currPKG.class == String)
    # set the PackageVersion
    currPKG['PackageVersion'] = v
    # write to a temporary file
    f = ::File.open("/tmp/com.oracle.jre.plist","w")
    f.puts Plist::Emit.dump(currPKG)
    f.close
    # convert it back to binary and replace the original
    system("rm -rf /var/db/receipts/com.oracle.jre.plist")
    system("plutil -convert binary1 -o /var/db/receipts/com.oracle.jre /tmp/com.oracle.jre.plist")
    system("rm -rf /tmp/com.oracle.jre.plist")
  end
end
