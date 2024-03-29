function Is-Connected-To-Internet
{
################################################################
#.Synopsis
#  Checks to see if your connected to the internet
#.Description
#  This gets an instance of the NetworkListManager and checks the
#  IsConnectedToInternet Method
#.Example
#  Is-Connected-To-Internet
#.Link
#  http://www.phillipkuo.com/blog/?p=129
################################################################
[CmdletBinding()]
param()
    PROCESS{
        [Activator]::CreateInstance([Type]::GetTypeFromCLSID([Guid]‘{DCB00C01-570F-4A9B-8D69-199FDBA5723B}’)).IsConnectedToInternet 
   }
}