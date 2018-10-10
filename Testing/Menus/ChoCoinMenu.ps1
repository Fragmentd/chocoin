<#
==================================================
=== Name: ChoCoin.ps1
=== Purpose: To automate the install of package favorites.
=== Author: Brandon McKinley - FragD
=== ∩┌┐┐∩(◣ _ ◢)∩┌┐┐∩
=== Date Oct 9, 2018
=== Disclaimer: Use at your own Risk!

=== Change Log:
0.01 - October 9, 2018 -
        +Added
         - Menu Layout
        +Changed
         -
        +Complete
         -
#>

#====================VARIABLES SECTION====================
$VersionNumber = "0.01 ALPHA"
$chocoversion = choco --version
$TitleMain = 'ChoCoin Main Menu'
$TitleSection1 = 'Execution Policy'
$TitleSection2 = 'Browser'
$TitleSection3 = 'Mail'
function Show-Menu
{
     param (
           )
     Clear-Host
     Write-Host "================ $TitleMain ================"

     Write-Host "1: Set Execution Policy"
     Write-Host "2: Browser"
     Write-Host "3: Tools"
     Write-Host "Q: Press 'Q' to quit."
}
do
{
     Show-Menu
     $input = Read-Host "Please make a selection"
     switch ($input)
     {
           '1' {
                Clear-Host
                Write-Host "================ $TitleSection1 ================"
                Start-Sleep -m 500
                Write-Host -NoNewLine "Execution Policy Status: "; get-executionpolicy
                Write-Host
           }
           '2' {
                Clear-Host
                'You chose option #2'
           }
           '3' {
                Clear-Host
                'You chose option #3'
           }
           'q' {
                return
           }
     }
     pause
}
until ($input -eq 'q')
