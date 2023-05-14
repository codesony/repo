[datetime]$stop = '09:33:45'

Do{
    write-host '-$' -ForegroundColor DarkGreen -NoNewline
    sleep 1
}until((get-date) -ge $stop)


while((get-date) -le $stop){
    write-host '-$' -ForegroundColor DarkGreen -NoNewline
    sleep 1
}