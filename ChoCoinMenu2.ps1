<#========================================
=== Name:
#>
#====================VARIABLES SECTION====================
$VersionNumber = "0.01 Alpha"
$ExecutionPolicyStatus = get-executionpolicy
#====================MAIN MENU====================
$menu=@"
1 Change Execution Policy
2 Chocolatey
3 Browsers
4 Tools
Q Quit

Select a task by number or Q to quit
"@
Write-Host "My Menu" -ForegroundColor Cyan
$r = Read-Host $menu

Switch ($r) {
"1" {
    Write-Host "Change Execution Policy" -ForegroundColor Green
    Write-Host "Bypassing Execution Policy" -ForegroundColor Green -BackgroundColor Black
    Set-ExecutionPolicy Bypass -Scope Process -Force
    write-Host "Execution Policy Status: $ExecutionPolicyStatus"
}

"2" {
    Write-Host "Chocolatey" -ForegroundColor Green
    #insert your code here
}

"3" {
    Write-Host "Browsers" -ForegroundColor Green
    #insert your code here
}

"4" {
    Write-Host "Tools" -ForegroundColor Green
    #insert your code here
}
"Q" {
    Write-Host "Quitting" -ForegroundColor Green
}

default {
    Write-Host "I don't understand what you want to do." -ForegroundColor Yellow
 }
} #end switch
