<#
==================================================
=== Name: chocoin.ps1
=== Purpose: To automate the install of package favorites.
=== Author: Brandon McKinley - FragD
=== Date Sept 15, 2018
=== Disclaimer: Use at your own Risk!
=== ToDo: Please see todo.md
=== Change Log:
0.01 - Sept 15, 2018 - Script Layout.
0.02 - Sept 21, 2018 - Added Color to Install Text.
0.03 - Sept 22, 2018 - Added ChocolateyGUI to initial install
0.04 - Oct 08, 2018
    + Added:
       - Added Variables section.
       - Added Disclaimer Printout.
       - Added Info Section Printout.
       - Added User input for the questions.
    + Changed:
       - question format for initial install.
       - Color Changes.
       - More Color Changes.
       - Reorder of Notes - Switched the positions of the  Disclaimer and Info Section.
0.05 - Oct 09, 2018
    + Added:
      - Chocolatey Installer Complete
    + Changed:

=== Disclaimer: Use at your own Risk!
================================================== #>
# Variables Section
$VersionNumber = "0.05 Alpha"
$ExecutionPolicyStatus = get-executionpolicy
$chocoversion = choco --version

# This section will print the title of the scrip.
# $VersionNumber
Write-host "====================INFO======================" -ForegroundColor DarkGray -BackgroundColor Black
Write-host "| Choco Favorites Installer - ChocoIn        |" -ForegroundColor DarkGray -BackgroundColor Black
Write-host -NoNewline "| Version Number:"             -ForegroundColor DarkGray -BackgroundColor Black
Write-host -NoNewline $VersionNumber  -ForegroundColor Red -BackgroundColor Black
Write-host "                  |"             -ForegroundColor DarkGray -BackgroundColor Black
Write-host "| Please submit change requests              |" -ForegroundColor DarkGray -BackgroundColor Black
Write-host "| Or Feedback to:                            |" -ForegroundColor DarkGray -BackgroundColor Black
Write-host "|          FragDProjects@gmail.com           |" -ForegroundColor DarkGray -BackgroundColor Black
Write-host "==============================================" -ForegroundColor DarkGray -BackgroundColor Black

# Disclaimer Print out
Write-host "==============================================" -ForegroundColor DarkGray -BackgroundColor Black
Write-host "|! ! ! Disclaimer: Use at your own Risk ! ! !|" -ForegroundColor DarkGray -BackgroundColor Black
Write-host "==============================================" -ForegroundColor DarkGray -BackgroundColor Black

# Pause
Start-Sleep -s 3

Write-host "! ! ! WARNING ! ! !" -ForegroundColor Red -BackgroundColor Black
Write-host "Continuing will set Execution Policy for the entire system!"
Write-host "Answering No will exit the script." -ForegroundColor Red -BackgroundColor Black

$confirmationexepol = Read-Host "[y|n]"
if ($confirmationexepol -eq 'y') {
Write-host "Bypassing Execution Policy" -ForegroundColor Green -BackgroundColor Black

# Sets ExecutionPolicy Bypass, (Is this even needed? As execution policy needs to be set before this script would run).
Set-ExecutionPolicy Bypass -Scope Process -Force

# Retrieve the execution policy status.
write-host "Execution Policy Status: $ExecutionPolicyStatus"

# Pause
Start-Sleep -s 1
} else {exit}

#Line Break
Write-host "==============================================" -ForegroundColor Green -BackgroundColor Black

#Chocolatey Install
Write-host "Would you like to Download and Install Chocolatey?" -ForegroundColor Green -BackgroundColor Black

$confirmationChoco = Read-Host "[y|n]"
if ($confirmationChoco -eq 'y') {

# Pause
Start-Sleep -s 2

Write-host "Chocolatey Is now being downloaded" -ForegroundColor Green -BackgroundColor Black

# Downloads and Installs Chocolatey
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
} else {exit}

Write-Host "Chocolatey Installed Version is: $chocoversion"
