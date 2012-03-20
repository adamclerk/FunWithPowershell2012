function Count-Object() {
################################################################
#.Synopsis
#  Counts objects from the pipe
#.Parameter 
#  Pipe in an array of objects
################################################################  
    begin {
        $count = 0
    }
    process {
        $count += 1
    }
    end {
        $count
    }
}