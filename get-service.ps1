#Script to check a list of servers for any given service and report back whether it is represent 

$servers = "C:\Temp\servers.txt"
$service = "My Service Display Name"
$results_file = "C:\Temp\results.txt"

Foreach ($server in (Get-Content $servers)) {
    if (Get-Service -computername $server -DisplayName $service){
        Add-Content $results_file "$server $service Installed"
        write-host $server
    }  
    else {
        Add-Content $results_file "$server $service Required"
        write-host $server
        }
     }
