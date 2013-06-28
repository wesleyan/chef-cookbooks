# This script sets the computers name by FQDN

$ip = Get-NetIPConfiguration.IPv4Address.IPAddress;
$hostname = [System.Net.Dns]::gethostentry($ip).HostName.split(".")[0];
$computerName = Get-WmiObject Win32_ComputerSystem;
$computerName.Rename($hostname);