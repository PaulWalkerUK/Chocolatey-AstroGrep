$installParams = @{
    packageName = 'astrogrep'
    fileType = 'exe'
    silentArgs = '/S'
    url = 'https://downloads.sourceforge.net/project/astrogrep/AstroGrep%20%28Win32%29/AstroGrep%20v4.4.6/AstroGrep_Setup_v4.4.6.exe'
}

Install-ChocolateyPackage @installParams
