# This script sets the computers name by FQDN

$ip = (Get-WmiObject -Class Win32_NetworkAdapterConfiguration | where{$_.IPEnabled -eq "True"}).IPAddress[0];
$hostname = [System.Net.Dns]::gethostentry($ip).HostName.split(".")[0];
$computerName = Get-WmiObject Win32_ComputerSystem;
$computerName.Rename($hostname);
