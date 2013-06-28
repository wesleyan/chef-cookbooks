##
# Sets the hostname of the PC and binds to Active Directory.
# A reboot will occur after the hostname is set once successfully.
##

# Set Hostname
powershell %q{'$ip = Get-NetIPConfiguration.IPv4Address.IPAddress;
$hostname = [System.Net.Dns]::gethostentry($ip).HostName.split(".")[0];
$computerName = Get-WmiObject Win32_ComputerSystem;
$computerName.Rename($hostname);'}

execute "shutdown /r /t 0" do
    not_if { ::File.exists? 'C:\Hostname-Set' }
end

execute "create receipt" do
    command 'echo "" > "C:\Hostname-Set"'
end

# Bind to AD
powershell %q{'$credential = New-Object System.Management.Automation.PsCredential("wesad.wesleyan.edu\ghostuser", (ConvertTo-SecureString "r0ck3tm@n" -AsPlainText -Force));
    Add-Computer -DomainName "wesad.wesleyan.edu" -Credential $credential'}

