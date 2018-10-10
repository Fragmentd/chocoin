#==========Variables==========
$foregroundColor = "Green"
# $foregroundcolor = yellow
#==========Text for Menu=========
Write-Host `n"Ninja Center v" $ncVer -ForeGroundColor $foregroundColor
Write-Host `n"Type 'q' or hit enter to drop to shell"`n
Write-Host -NoNewLine "<" -foregroundcolor $foregroundColor
Write-Host -NoNewLine "Active Directory"
Write-Host -NoNewLine ">" -foregroundcolor $foregroundColor
Write-Host -NoNewLine "["
Write-Host -NoNewLine "A" -foregroundcolor $foregroundColor
Write-Host -NoNewLine "]"

Write-Host -NoNewLine `t`n "A1 - " -foregroundcolor $foregroundColor
Write-host -NoNewLine "Look up a user"
Write-Host -NoNewLine `t`n "A2 - " -foregroundcolor $foregroundColor
Write-host -NoNewLine "Enter PowerShell session on DC"
Write-Host -NoNewLine `t`n "A3 - " -foregroundcolor $foregroundColor
Write-host -NoNewLine "Run DCDiag on a DC (or all DCs)"`n`n

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
