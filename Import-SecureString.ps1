function Import-SecureString{
    param($file)
    $textFromFile = Get-Content $file
    ConvertTo-SecureString $textFromFile
}