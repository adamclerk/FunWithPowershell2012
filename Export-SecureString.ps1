function Export-SecureString{
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
    param($text,$file,$key)
    if($key){ConvertFrom-SecureString -SecureString $text -key $key | out-file $file}
    else{ConvertFrom-SecureString -SecureString $text | out-file $file}
}
