function Export-SecureString{  
    param($pass,$file)
    ConvertFrom-SecureString -SecureString $pass | Out-File $file
} 