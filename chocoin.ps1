<#
==================================================
=== Name: ChoCoin.ps1
=== Purpose: To automate the install of package favorites.
=== Author: Brandon McKinley - FragD
=== ∩┌┐┐∩(◣ _ ◢)∩┌┐┐∩
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
0.1 - Oct 09, 2018 - Moving to beta!
    + Complete
       - Chocolatey Installer Complete
    + Added:
       - ChocolateyGUI Install Complete
       - Section titles
       - Section Footers
       - Browser Section added - Needs completed
    + Changed:
      - Version Text to Yellow - to match beta status
      - More Color Changes
0.11 - Oct 10, 2018 - Adding more color options yet again...
    +Complete
    +Chaged
      - Changed Color Layout options
    +Added

=== Disclaimer: Use at your own Risk!
================================================== #>

#====================VARIABLES SECTION====================
$VersionNumber = "0.11 BETA"
$ExecutionPolicyStatus = get-executionpolicy
$chocoversion = choco --version
$ForegroundColorHeaderBorder = 'Green'
$BackgroundColorHeaderBorder = 'Black'

#====================TITLE SECTION====================
##This section will print the title of the scrip.
Write-Host "=====================INFO======================" -ForegroundColor $ForegroundColorHeaderBorder -BackgroundColor $BackgroundColorHeaderBorder
Write-Host -NoNewline "| " -ForegroundColor $ForegroundColorHeaderBorder -BackgroundColor $BackgroundColorHeaderBorder
write-Host -NoNewline "Choco Favorites Installer - ChocoIn" -ForegroundColor Yellow -BackgroundColor Black
Write-Host "         |" -ForegroundColor $ForegroundColorHeaderBorder -BackgroundColor $BackgroundColorHeaderBorder
Write-Host -NoNewline "| " -ForegroundColor $ForegroundColorHeaderBorder -BackgroundColor $BackgroundColorHeaderBorder
Write-Host -NoNewline "Version Number:" -ForegroundColor Yellow -BackgroundColor Black
Write-Host -NoNewline $VersionNumber  -ForegroundColor Yellow -BackgroundColor Black
Write-Host "                    |" -ForegroundColor $ForegroundColorHeaderBorder -BackgroundColor $BackgroundColorHeaderBorder
Write-Host -NoNewLine "| " -ForegroundColor $ForegroundColorHeaderBorder -BackgroundColor $BackgroundColorHeaderBorder
Write-Host -NoNewline "Please submit change requests" -ForegroundColor Yellow -BackgroundColor Black
Write-Host "               |" -ForegroundColor $ForegroundColorHeaderBorder -BackgroundColor $BackgroundColorHeaderBorder
Write-Host -NoNewLine "| " -ForegroundColor $ForegroundColorHeaderBorder -BackgroundColor $BackgroundColorHeaderBorder
Write-Host -NoNewLine "Or Feedback to:" -ForegroundColor Yellow -BackgroundColor Black
Write-Host "                             |" -ForegroundColor $ForegroundColorHeaderBorder -BackgroundColor $BackgroundColorHeaderBorder
Write-Host -NoNewLine "|          " -ForegroundColor $ForegroundColorHeaderBorder -BackgroundColor $BackgroundColorHeaderBorder
Write-Host -NoNewLine "FragDProjects@gmail.com" -ForegroundColor Yellow -BackgroundColor Black
Write-Host "            |" -ForegroundColor $ForegroundColorHeaderBorder -BackgroundColor $BackgroundColorHeaderBorder
Write-Host "===============================================" -ForegroundColor $ForegroundColorHeaderBorder -BackgroundColor $BackgroundColorHeaderBorder

#====================DISCLAIMER====================
##Disclaimer Print out
Write-Host "==================DISCLAIMER===================" -ForegroundColor $ForegroundColorHeaderBorder -BackgroundColor $BackgroundColorHeaderBorder
Write-Host -NoNewLine "|" -ForegroundColor $ForegroundColorHeaderBorder -BackgroundColor $BackgroundColorHeaderBorder
write-Host -NoNewLine "! ! ! Disclaimer: Use at your own Risk ! ! !" -ForegroundColor Red -BackgroundColor Black
write-Host " | "-ForegroundColor $ForegroundColorHeaderBorder -BackgroundColor $BackgroundColorHeaderBorder
Write-Host "===============================================" -ForegroundColor $ForegroundColorHeaderBorder -BackgroundColor $BackgroundColorHeaderBorder
##Pause
Start-Sleep -s 3

#====================EXECUTIONPOLICY====================
Write-Host "+ EXECUTION POLICY" -ForegroundColor White -BackgroundColor Black
Write-Host "==============================================" -ForegroundColor Green -BackgroundColor Black
Write-Host "! ! ! WARNING ! ! !" -ForegroundColor Red -BackgroundColor Black
Write-Host "Continuing will set Execution Policy for the entire system!"
Write-Host "Answering No will exit the script." -ForegroundColor Red -BackgroundColor Black
$confirmationexepol = Read-Host "[y|n]"
if ($confirmationexepol -eq 'y') {
Write-Host "Bypassing Execution Policy" -ForegroundColor Green -BackgroundColor Black
##Sets ExecutionPolicy Bypass, (Is this even needed? As execution policy needs to be set before this script would run).
Set-ExecutionPolicy Bypass -Scope Process -Force
##Retrieve the execution policy status.
write-Host "Execution Policy Status: $ExecutionPolicyStatus"
##Pause
Start-Sleep -s 1
} else {exit}
##Line Break
Write-Host "==============================================" -ForegroundColor Green -BackgroundColor Black

#====================CHOCOLATEY INSTALL SECTION====================
Write-Host "+ CHOCOLATEY INSTALLER" -ForegroundColor White -BackgroundColor Black
Write-Host "==============================================" -ForegroundColor Green -BackgroundColor Black
Write-Host "Would you like to Download and Install Chocolatey?" -ForegroundColor Green -BackgroundColor Black
$confirmationChoco = Read-Host "[y|n]"
if ($confirmationChoco -eq 'y') {
##Pause
Start-Sleep -s 2
Write-Host "Chocolatey Is now being downloaded" -ForegroundColor Green -BackgroundColor Black
# Downloads and Installs Chocolatey
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
} else {exit}

#Prints Chocolatey Verison Information
Write-Host "Chocolatey Installed Version is: $chocoversion"
Write-Host "==============================================" -ForegroundColor Green -BackgroundColor Black

#====================CHOCOLATEY GUI INSTALLER====================
Write-Host "+ CHOCOLATEYGUI INSTALLER" -ForegroundColor White -BackgroundColor Black
Write-Host "==============================================" -ForegroundColor Green -BackgroundColor Black
Write-Host "Would you like to Install ChocolateyGUI?"
$confirmationChocoGUI = Read-Host "[y|n]"
if ($confirmationChocoGUI -eq 'y') {
choco install -y ChocolateyGUI
Write-Host "==============================================" -ForegroundColor Green -BackgroundColor Black
} Else {exit}

#====================BROWSERS====================
Write-Host "+ BROWSER CHOICE" -ForegroundColor White -BackgroundColor Black
Write-Host "==============================================" -ForegroundColor Green -BackgroundColor Black
