#
# Author:: Max Dietz (<mdietz@wesleyan.edu>)
# Cookbook Name:: windows
# Provider:: printer_port_lpr
#
# Copyright:: 2013, Wesleyan University
#

action :create do 
  if port_exists?(new_resource.lpr_server, new_resource.printer_name)
    Chef::Log.info "#{ new_resource.printer_name } already exists - nothing to do."
  else
    # create the LPR printer port using PowerShell
    powershell "Creating printer port #{ new_resource.printer_name }" do
      code "Add-PrinterPort -Hostname #{ new_resource.lpr_server } -PrinterName #{ new_resource.printer_name }"
    end
  end
end


private

def port_exists?(server, name)
  port_reg_key = 'HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Print\Monitors\LPR Port\Ports\\'
  port_reg_key << "#{server}:#{name}"
  Chef::Log.debug "Checking to see if this reg key exists: '#{ port_reg_key }'"
  Registry.key_exists?(port_reg_key)
end