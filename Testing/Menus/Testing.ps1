#==========Variables==========
$foregroundColor = "Green"
# $foregroundcolor = yellow
#==========Text for Menu=========
Write-Host `n"ChoCoin - The Chocola Installer" $ncVer -ForeGroundColor $foregroundColor
Write-Host `n"Type 'q' or hit enter to drop to shell"`n
Write-Host -NoNewLine "<" -foregroundcolor $foregroundColor
Write-Host -NoNewLine "Chocolatey"
Write-Host -NoNewLine ">" -foregroundcolor $foregroundColor
Write-Host -NoNewLine "["
Write-Host -NoNewLine "A" -foregroundcolor $foregroundColor
Write-Host -NoNewLine "]"

Write-Host -NoNewLine `t`n "A1 - " -foregroundcolor $foregroundColor
Write-host -NoNewLine "Set Execution Policy"
Write-Host -NoNewLine `t`n "A2 - " -foregroundcolor $foregroundColor
Write-host -NoNewLine "Install Chocolatey"
Write-Host -NoNewLine `t`n "A3 - " -foregroundcolor $foregroundColor
Write-host -NoNewLine ""`n`n

Write-Host -NoNewLine "<" -foregroundcolor $foregroundColor
Write-Host -NoNewLine "Exchange"
Write-Host -NoNewLine ">" -foregroundcolor $foregroundColor
Write-Host -NoNewLine "["
Write-Host -NoNewLine "E" -foregroundcolor $foregroundColor
Write-Host -NoNewLine "]"

Write-Host -NoNewLine `t`n "E1 - " -foregroundcolor $foregroundColor
Write-host -NoNewLine "Forward a mailbox"
Write-Host -NoNewLine `t`n "E2 - " -foregroundcolor $foregroundColor
Write-host -NoNewLine "Clear a mailbox forward"
Write-Host -NoNewLine `t`n "E3 - " -foregroundcolor $foregroundColor
Write-host -NoNewLine "See if an IP address is being relayed"`n`n

Write-Host -NoNewLine "<" -foregroundcolor $foregroundColor
Write-Host -NoNewLine "Storage"
Write-Host -NoNewLine ">" -foregroundcolor $foregroundColor
Write-Host -NoNewLine "["
Write-Host -NoNewLine "S" -foregroundcolor $foregroundColor
Write-Host -NoNewLine "]"

Write-Host -NoNewLine `t`n "S1 - " -foregroundcolor $foregroundColor
Write-host -NoNewLine "Connect to a NetApp controller"`n`n

$sel = Read-Host "Which option?"

Switch ($sel) {
    "A1" {Get-ADinfo;Load-NinjaCenter}
    "A2" {Enter-DCSession}
    "A3" {
        $DCs      = Read-Host "DC (specify name or put 'all' for all)?"
        $test     = Read-Host "Enter 'error' or 'full' for test feedback"


        $global:dcDiagResults = Get-DCDiagInfo -DC $DCs -Type $test -Verbose

        Write-Host `n"Results stored in the variable: dcDiagResults"`n
        Write-Host -NoNewLine "Type "
        Write-Host -NoNewLine "Load-NinjaCenter " -foregroundcolor $foregroundcolor
        Write-Host -NoNewLine "to load the menu again."`n
    }

    "E1" {Forward-Email}
    "E2" {Clear-Forward}
    "E3" {Check-EXRelayIP}

    "S1" {
        Connect-NetAppController

        Write-Host -NoNewLine "Type "
        Write-Host -NoNewLine "Load-NinjaCenter " -foregroundcolor $foregroundcolor
        Write-Host -NoNewLine "to load the menu again."`n
}

    {($_ -like "*q*") -or ($_ -eq "")} {

        Write-Host `n"No input or 'q' seen... dropping to shell" -foregroundColor $foregroundColor
        Write-Host "Type Load-NinjaCenter to load them menu again"`n


    }

}
