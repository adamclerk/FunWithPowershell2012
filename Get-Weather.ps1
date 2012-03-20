function Get-Weather
{
################################################################
#.Synopsis
#  Get the weather for a specific RADIO station code in XML format
#.Description
#  www.weather.gov provides xml formated weather data according to 
#  radio station identification codes.  This script queries this 
#  information and provides the xml result.
#.Parameter Code
#  The radio station code. (KBOI, KBYI, KEUL)
#.Example
#  Get-Weather KBOI
#.Example
#  Get-Weather KBOI -Verbose
#.Notes
#  Run the command 
#  'help Get-Weather -online'
#  To be taken to the weather.gov website for more information
#.Link
#  http://www.weather.gov/xml/current_obs/
################################################################
    [CmdletBinding()]
    param(
        [Parameter(Position=1,HelpMessage='Please provide a weather station code')]
        [string[]] $code,
        [switch] $noInternet
    )    
    
    #BEGIN SCRIPT BODY
    if($noInternet)
    {
        Write-Verbose "Not connected to the internet!"        
        $rand = New-Object System.Random
        $Output = "" | SELECT Location, Station, TempF, TempC, Weather
        $Output.Location = "Somewhere"
        $Output.Station = "ZZZZ"
        $Output.TempF = [System.Convert]::ToDecimal($rand.next(45,70))
        $Output.TempC = [System.Convert]::ToDecimal($rand.next(8,20))
        $Output.Weather = "Great!"
        $Output
        return
    }
    
    
    
    try
    {
        Write-Verbose "Generating Url for $code"
        $url = "http://www.weather.gov/xml/current_obs/$code.xml"
        Write-Verbose $url
    
        [xml]$xml = (new-object System.Net.WebClient).DownloadString($url)
        $weather = $xml.current_observation
        
        $Output = "" | SELECT Location, Station, TempF, TempC, Weather
        $Output.Location = $weather.location
        $Output.Station = $weather.station_id
        $Output.TempF = [System.Convert]::ToDecimal($weather.temp_f)
        $Output.TempC = [System.Convert]::ToDecimal($weather.temp_c)
        $Output.Weather = $weather.weather
        $Output
    }
    catch [system.exception]
    {
        Write-Verbose "Error retrieving weather data";  
        Write-Verbose $error[0]
    }
}