function Get-Gmail-Unread-Count{  
################################################################
#.Synopsis
# This script gets the number of unread messages from gmail
#.Description
#   
#.Parameter 
#  
#.Example
#  
#.Notes
#  
#.Link
#  
################################################################ 	
    [CmdletBinding()]
    param(
        [Parameter(Position=1)]
        [string] $username="adamclerk",
        [Parameter(Position=2)]
        [System.Security.SecureString] $password=$(Read-Host -AsSecureString -Prompt "Please provide a password for: $username")
    )
    $cred = New-Object System.Management.Automation.PsCredential($username,$password)
    $networkCred = $cred.GetNetworkCredential()
    $webclient = new-object System.Net.WebClient
    $webclient.Credentials = $networkCred
    [xml]$xml= $webclient.DownloadString("https://mail.google.com/mail/feed/atom")
    $xml.feed.entry | Count-Object
    
    
} 