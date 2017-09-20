<#
.EXAMPLE
choco install astrogrep
Install AstroGrep to the default location:
C:\Program Files (x86)\AstroGrep

.EXAMPLE
choco install astrogrep --params "/installPath:'e:\apps folder\astrogrep'"
Install AstroGrep to the specified location
#>

$pp = Get-PackageParameters
$installPath = ''

If ($pp['installPath']) { 
    $installPath = "/D=$($pp['installPath'])" 
}

$installParams = @{
    PackageName = 'astrogrep'
    FileType = 'exe'
    SilentArgs = "/S $installPath"
    Url = 'https://downloads.sourceforge.net/project/astrogrep/AstroGrep%20%28Win32%29/AstroGrep%20v4.4.6/AstroGrep_Setup_v4.4.6.exe'
    Checksum = 'CD544F508837122389669AE031DD40F71F4147FFC6A4F5948A22DE8BEAAE74C5B3310EBBFCAF4818AF9E279425AEA2D62D0E927933F1B61465D35AB97BCB9DBF'
    ChecksumType = 'sha512'
}

Install-ChocolateyPackage @installParams
