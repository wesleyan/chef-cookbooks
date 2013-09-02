#
# Author:: Max Dietz (<mdietz@wesleyan.edu>)
# Cookbook Name:: windows
# Provider:: printer_port_lpr
#
# Copyright:: 2013, Wesleyan University
#

action :add do
  powershell "Adding driver #{ new_resource.driver }"  do
    code "Add-PrinterDriver -Name '#{ new_resource.driver }'"
  end

  powershell "Creating printer port #{ new_resource.printer_name }" do
    code "Add-Printer -Name '#{new_resource.printer_name}' -DriverName '#{new_resource.driver}' -PortName #{new_resource.lpr_server}:#{new_resource.printer_name}"
  end
end
