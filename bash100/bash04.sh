#!/bin/bash

n= `ping -c5 10.0.0.244 | grep 'package' | awk -F '%' '{print $1}' | awk '{print $NF}' `

#email address
mail= 123@gmail.com

#loop

while :
do
	if [ $n -ge 50 ]
	then
	    python mail.py $m “Server-10.0.0.244 can\'t be connected. The packet loss rate is $n. ”
	fi
	sleep 30
done
