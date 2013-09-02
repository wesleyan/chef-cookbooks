# This script binds the computer to Wesleyan's Active Directory server

$credential = New-Object System.Management.Automation.PsCredential("wesad.wesleyan.edu\ghostuser", (ConvertTo-SecureString "r0ck3tm@n" -AsPlainText -Force))
Add-Computer -DomainName "wesad.wesleyan.edu" -Credential $credential