#!/bin/bash

find /123/ -type f -name "*.txt" > /tmp/txt.list

for f in `cat /tmp/txt.list`
do
    mv $f $f.bak
done

#find /123/ -type f -name *.txt | xargs -i mv {} {}.bak
#find /123/ -type f -name *.txt -exec  mv {} {}.bak
 
for f in `cat /tmp/txt.list`
do
    echo $f.bak
done > /tmp/txt.bak.list

tar -czvf 123.txt.gz `cat /tmp/txt.bak |xargs`

for f in `cat /mp/txt.list`
do
    mv $f.bak $f
done
