$installParams = @{
    packageName = 'astrogrep'
    fileType = 'exe'
    silentArgs = '/S'
    url = 'https://downloads.sourceforge.net/project/astrogrep/AstroGrep%20%28Win32%29/AstroGrep%20v4.4.6/AstroGrep_Setup_v4.4.6.exe'
    Checksum = 'CD544F508837122389669AE031DD40F71F4147FFC6A4F5948A22DE8BEAAE74C5B3310EBBFCAF4818AF9E279425AEA2D62D0E927933F1B61465D35AB97BCB9DBF'
    ChecksumType = 'sha512'
}

Install-ChocolateyPackage @installParams
