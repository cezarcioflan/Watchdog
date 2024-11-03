ps aux | awk '{print $1,$2,$3,$11}'
echo introduceti nr.proceselor de supravegheat
read n
for ((i=o;i<n;i++))
do
echo introduceti pid-ul procesului
read pid[i]
done
echo introduceti limita cpu
read limit
while [ $i -gt -1 ]
do
cpuusage=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
if (($cpuusage > $limit))
then
kill ${pid[i]}
i=$(($i - 1))
sleep 5
fi
done
