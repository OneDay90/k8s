#!/bin/bash

nodepid=`netstat -lntp | grep ":443" | awk '{print $NF}' | awk -F '/' '{print $1}'`
nodenum=`netstat -lntp | grep ":443" | grep -v pause | wc -l`

if [ $nodenum -eq 0 ];then
    exit
else
    kill -9 $nodepid
    exit
fi
