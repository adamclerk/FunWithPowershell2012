function Get-Map{  
    [CmdletBinding()]
    param(
        [parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
        [string] $lat,
        [parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
        [string] $long,
        [parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
        [string] $desc,
        [switch] $makeItSo
    )
    begin{
        
    }
    
    process{
        if($makeItSo)
        {
            start "https://maps.google.com/maps?q=$lat,+$long+($desc)&iwloc=A&hl=en"
        }
        else
        {
            "https://maps.google.com/maps?q=$lat,+$long+($desc)&iwloc=A&hl=en"
        }
    }
    
    end{
        
    }        
} 