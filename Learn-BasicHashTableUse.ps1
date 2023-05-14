#Excercise for hash tables

Get-Localuser | where {$_.lastlogon -ne $null -and $_.lastlogon -ge (get-date 01/01/2023)} |
 sort -Property lastlogon | select name, @{n="Logondate";e={$_.lastlogon.toshortdatestring()}}