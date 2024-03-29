function Get-GmailUnreadCount{  
    [CmdletBinding()]
    param(
        [Parameter(Position=0)]
        [string] $username="adamclerk",
        [Parameter(Position=1)]
        [System.Security.SecureString] 
        $password=$(Read-Host -AsSecureString -Prompt "Please provide a password for: $username")
    )
    
    $cred = New-Object System.Management.Automation.PsCredential($username,$password)
    $networkCred = $cred.GetNetworkCredential()
    Write-Verbose $networkCred
    $webclient = New-Object System.Net.WebClient
    $webclient.Credentials = $networkCred
    [xml]$xml = $webclient.DownloadString("https://mail.google.com/mail/feed/atom")
    $xml.feed.entry | Count-Object
     
} 