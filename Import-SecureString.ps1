function Import-SecureString{
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
#  
#.Link
#  http://bsonposh.com/archives/254
################################################################ 	
    Param($file,$key)
    $textFromFile = Get-Content $file
    if($key){ConvertTO-SecureString $TextFromFile -key $key}
    else{ConvertTO-SecureString $TextFromFile}
}