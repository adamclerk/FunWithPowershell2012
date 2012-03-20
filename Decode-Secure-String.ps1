function Decode-Secure-String{
################################################################
#.Synopsis
# 
#.Description
#   
#.Parameter 
#  
#.Example
#  
#.Notes
#  DAPI Key Management
#.Link
#  http://stackoverflow.com/a/6982430
#  http://bsonposh.com/archives/254
################################################################    
    [CmdletBinding()]
    param(
    [Parameter(Position=0,HelpMessage='Please provide a secure string')]
    [System.Security.SecureString] $secureString
    )    
    
    PROCESS
    {
        $BSTR = [System.Runtime.InteropServices.marshal]::SecureStringToBSTR($secureString)
        $ClearString = [System.Runtime.InteropServices.marshal]::PtrToStringAuto($BSTR)
        [System.Runtime.InteropServices.marshal]::ZeroFreeBSTR($BSTR)
        $ClearString
    }
    
}