function Get-Weather{  
################################################################
#.Synopsis
# Get the weather for a specific radio station
#.Description
# www.weather.gov provides weather data in xml format
#.Parameter Code
# The Radio Station code (KBOI, KBYI, KEUL)
#.Example
# Get-Weather -Code KBOI
#.Example
# Get-Weather KBOI
#.Example
# "KBOI", "KBYI", "KEUL" | Get-Weather
#.Notes
# Run the Command
# 'help Get-Weather -online'
# to be taken to weather.gov website
#.Link
# http://www.weather.gov/xml/current_obs
################################################################ 	
    [CmdletBinding()]
    param(
        [Parameter(ValueFromPipeline=$true, Mandatory=$true, Position=0, HelpMessage='Please provide a radio station')]
        [string[]] $Code
    )
    
    begin{
        
        Write-Verbose "Starting Get-Weather"
    }
    
    process{  
        #$DebugPreference = "Continue"
        Write-Debug "Code: $Code" 
        
        try
        {
            Write-Verbose "Generating URL for $Code"
            $url = "http://www.weather.gov/xml/current_obs/$Code.xml"
            Write-Debug "Url: $url"
            
            Write-Verbose "Requesting XML"
            [xml] $xml = (new-object System.Net.WebClient).DownloadString($url)
            $weather = $xml.current_observation
            
            $Output = "" | SELECT Location, Station, TempF, TempC, Weather, Lat, Long, Desc
            Write-Debug "Output: $Output"
            
            $Output.Location = $weather.location
            $Output.Station = $weather.station_id
            $Output.TempF = [System.Convert]::ToDecimal($weather.temp_f)
            $Output.TempC = [System.Convert]::ToDecimal($weather.temp_c)
            $Output.Weather = $weather.weather	
            $Output.Lat = $weather.latitude
            $Output.Long = $weather.longitude
            $Output.Desc = $weather.location + ' is ' + $weather.temp_f + 'F'
            
            Write-Debug "Output: $Output"
            
            Write-Output $Output
        }
        catch [system.exception]
        {
            Write-Verbose "Error retrieving weather data";
            Write-Verbose $error[0]
        }
    }
    
    end{
        Write-Verbose "Exiting Get-Weather"
    }
    
    
}	

function Private-Function{

}