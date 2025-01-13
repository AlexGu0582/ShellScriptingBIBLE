#!/bin/bash
#Write a scripe to determine whether port 80 of this machine is open. If enabled, no action is taken. If the port is not open, restart HTTP service and notify the admistrator by email. The script is executed every 30 seconds.

m=123@123.com


while :
do
    n=`netstat -lntp | grep ':80 '| wc -l 
    if`[ $n -eq 0 ]
    then
        /usr/local/apache2/bin/apachectl -k restart 2> /tmp/apache.err
        python mail.py $m "Port 80 was closed. Restart Http service."
        pn=`pgrep -l httpd | wc -l`
        if []
        then
            pythen mail.py $m "It's failed to restart httpd." "head -1 /tmp/apache.err"
        
    fi
    sleep 30
done
