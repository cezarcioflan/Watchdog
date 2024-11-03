#!/bin/bash

ps aux | awk '{print $1, $2, $3 ,$11}' 
echo introduceti nr. proceselor de supravegheat:
read n
for((i=0; i<n; i++))
do
echo introduceti pid-ul procesului
read pid[i]
echo introduceti limita cpu
read lim[i]
cpulimit -b -p ${pid[i]} -l ${lim[i]}
done
