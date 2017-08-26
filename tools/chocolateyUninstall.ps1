$packageName = "AstroGrep"
$uninstallString = ""


#Registry path depends on whether we're asking from a 32 bit or 64 bit process - check both
$uninstallRegPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\AstroGrep"
$uninstallRegPathWOW6432 = "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\AstroGrep"

If (Test-Path $uninstallRegPath) {
    #Would be cleaner to use `Get-ItemPropertyValue`, but that's not available in PS v2
    $uninstallString = (Get-ItemProperty -Path $uninstallRegPath -Name UninstallString).UninstallString
}
ElseIf (Test-Path $uninstallRegPathWOW6432) {
    $uninstallString = (Get-ItemProperty -Path $uninstallRegPathWOW6432 -Name UninstallString).UninstallString
}


If ($uninstallString -eq "") {
    throw "Uninstall details not found in registry"
}


Uninstall-ChocolateyPackage $packageName 'exe' '/S' $uninstallString
