$installParams = @{
    PackageName = 'astrogrep'
    FileType = 'exe'
    SilentArgs = '/S'
    Url = 'https://downloads.sourceforge.net/project/astrogrep/AstroGrep%20%28Win32%29/AstroGrep%20v4.4.7/AstroGrep_Setup_v4.4.7.exe'
    Checksum = '8E2FA5F33E16879D8F5ACB4AB783AA4B4B37266CD1346ABEF5D54F2DFEB2177AF872575780E2E7CD02E462349B1C35642C0F7BA3F860034775A064E9A07B08AF'
    ChecksumType = 'sha512'
}

Install-ChocolateyPackage @installParams
