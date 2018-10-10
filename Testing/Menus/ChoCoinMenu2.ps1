<#========================================
=== Name:
#>
#====================VARIABLES SECTION====================
$VersionNumber = "0.01 Alpha"
$ExecutionPolicyStatus = get-executionpolicy
#====================MAIN MENU====================
$menu=@"

A Chocolatey
A1 Change Execution Policy
A2 Install Chocolatey (Requires Administrator Access)
A3 Install ChocolateyGUI
A4 Update Chocolatey
A5 Update All Programs

B  Browser
B1 Install Chrome
B2 Install Firefox
B3 Install Vivaldi
B4 Install Opera

C Tools
Q Quit

Select a task by number or Q to quit
"@
#Menu end
Write-Host "ChoCoin - The Chocolatey Installer" -ForegroundColor Cyan
$r = Read-Host $menu

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
    Choco install ChocolateyGUI
}

"a4" {
    Write-Host "Update Chocolatey" -ForegroundColor Green
    choco upgrade chocolatey
}
"a5" {
    Write-Host "Update All" -ForegroundColor Green
    choco upgrade all
}
"q" {
    Write-Host "Quit" -ForegroundColor Green
    exit
}
default {
    Write-Host "No choice selected, Exiting Program" -ForegroundColor Yellow
 }
} #end switch
