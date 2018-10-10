<#
=== Filename: ChocoinMenu2.ps1
=== Purpose: Chocoin Main Menu script
=== Author: Brandon McKinley - FragD
=== Email: FragDProjects@gmail.com
=== ∩┌┐┐∩(◣ _ ◢)∩┌┐┐∩
=== Date Oct 10, 2018
=== Disclaimer: Use at your own Risk!
#>
#VARIABLES SECTION
$VersionNumber = "0.10 Beta"
$ExecutionPolicyStatus = get-executionpolicy
#MAIN MENU
$menu=@"
----------------------------
 + A Chocolatey
   - A1 Change Execution Policy
   - A2 Install Chocolatey (Requires Administrator Access)
   - A3 Install ChocolateyGUI
   - A4 Update Chocolatey
   - A5 Update All Programs

 + B  Browser
   - B1 Install Chrome
   - B2 Install Firefox
   - B3 Install Vivaldi
   - B4 Install Opera

 + C Tools
Q Quit

Select a task by number or Q to quit
"@
#Menu end
Write-Host "ChoCoin - The Chocolatey Installer" -ForegroundColor Cyan
$r = Read-Host $menu

<# Item Entry Template
"xX" {
    #Write-Host "Item Text" -ForegroundColor Green
    #your command here
} End Template#>
#Chocolatey Section Start
Switch ($r) {
"a1" {
    Write-Host "Change Execution Policy" -ForegroundColor Green
    Write-Host "Bypassing Execution Policy" -ForegroundColor Green -BackgroundColor Black
    Set-ExecutionPolicy Bypass -Scope Process -Force
    write-Host "Execution Policy Status: $ExecutionPolicyStatus"
}

"a2" {
    Write-Host "Install Chocolatey" -ForegroundColor Green
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

"a3" {
    Write-Host "Install ChocolateyGUI" -ForegroundColor Green
    Choco install -y ChocolateyGUI
}

"a4" {
    Write-Host "Update Chocolatey" -ForegroundColor Green
    choco upgrade -y chocolatey
}
"a5" {
    Write-Host "Update All" -ForegroundColor Green
    choco upgrade all -y
}
#Chocolatey Section End
#Browser Section Start
"b1" {
    Write-Host "Install Chrome" -ForegroundColor Green
    choco install -y googlechrome
}
"b2" {
    Write-Host "Install Firefox" -ForegroundColor Green
    choco install -y firefox
}
"b3" {
    Write-Host "Install Vivaldi" -ForegroundColor Green
    choco install -y Vivaldi
}
"b4" {
    Write-Host "Install Opera" -ForegroundColor Green
    choco install -y opera
    $menu
}
"q" {
    Write-Host "Quit" -ForegroundColor Green
    exit
}
default {
    Write-Host "No choice selected, Exiting Program" -ForegroundColor Yellow
 }
} #end switch
