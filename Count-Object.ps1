function Count-Object{  
    begin{ $count = 0 }
    process
    { 
        if($_ -ne $null)
        {
            $count += 1 
        }
    }
    end{ $count }     
}	