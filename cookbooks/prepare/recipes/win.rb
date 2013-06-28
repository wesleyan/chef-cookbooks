##
# Sets the hostname of the PC and binds to Active Directory.
# A reboot will occur after the hostname is set once successfully.
##

# Set Hostname
cookbook_file 'C:\set_hostname.ps1' do
    not_if { ::File.exists? 'C:\Hostname-Set' }
end

execute 'powershell -ExecutionPolicy Unrestricted C:\set_hostname.ps1' do
    not_if { ::File.exists? 'C:\Hostname-Set' }
end

execute 'rm C:\set_hostname.ps1' do
    not_if { ::File.exists? 'C:\Hostname-Set' }
end

# Write receipt and restart
execute 'echo "" > C:\Hostname-Set && shutdown /r /t 0' do
    not_if { ::File.exists? 'C:\Hostname-Set' }
end

cookbook_file 'C:\bind.ps1'
execute 'powershell -ExecutionPolicy Unrestricted C:\bind.ps1'
execute 'rm C:\bind.ps1'