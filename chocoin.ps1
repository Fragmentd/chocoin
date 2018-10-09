<#
==================================================
=== Name: chocoin.ps1
=== Purpose: To automate the install of package favorites.
=== Author: Brandon McKinley - FragD
=== Date Sept 15, 2018
=== Disclaimer: Use at your own Risk!
=== ToDo: Please see todo.md

=== Changes:
0.01 - Sept 15, 2018 - Script Layout.
0.02 - Sept 21, 2018 - Added Color to Install Text.
0.03 - Sept 22, 2018 - Added ChocolateyGUI to initial install
=== Disclaimer: Use at your own Risk!
#>
Write-host "Choco In - Installer" -ForegroundColor Green -BackgroundColor Black

Write-host "Would you like to Download and Install Chocolatey? (Default is No)" -ForegroundColor Red -BackgroundColor Yellow

<#    $Readhost = Read-Host " ( y / n ) "
    Switch ($ReadHost)
     {
       Y {Write-host "Yes, Download Chocolatey"; $UserInput1=$true}
       N {Write-Host "No, Exiting now..."; $UserInput1=$false}
       Default {Write-Host "Default, Exit"; $UserInput1=$false}
     }
#>

$confirmation = Read-Host "Do you want to continue?[Y]/[N]:"
if ($confirmation -eq 'y') {
  # proceed
}
Write-host -ForegroundColor Green -BackgroundColor Black "Chocolatey Is now being downloaded"

Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Write-host -ForegroundColor Green -BackgroundColor Black "TEST"
Write-host -ForegroundColor Green -BackgroundColor Black "TEST"
Write-host -ForegroundColor Green -BackgroundColor Black "TEST"
