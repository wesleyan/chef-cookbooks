# Installs Oracle Java JDK for Windows

windows_package "Oracle Java JDK" do
  source "http://ims-chef.wesleyan.edu/windows/oracle_java/jdk-7u21-windows-x64.exe"
  installer_type :wise
  version "7.21"
end