Param(
    [string[]]$computername = 'localhost'
)
Foreach ($computer in $computername) {
    try{
        test-netconnection $computer
        Get-ciminstance -computername $computer -ClassName win32_OperatingSystem -ErrorAction stop |
            select PSComputerName, LastBootTime
    }catch{
        Write-Warning "Error connecting to $computer"
    }
}
