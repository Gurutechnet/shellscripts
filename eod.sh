#!/bin/sh
#RED='\033[0;31m'
#NC='\033[0m' # No Color
for i in `cat /home/gurbas01/scripts/serverlist`
do
echo -e "\n \n" $i " Usage Status " ;
#ssh $i /usr/local/eod/bin/ecsinfo -c |  grep ",R," |  awk -F "," '{ print $1,$2,$3,$4,$15 }' | awk ' { a=(($5/60)/60)/24;print a " Days idle session ===> " , $0 " Seconds" }' | sort -n -k7 | egrep '^[3-9]' | sort;
ssh $i /usr/local/eod/bin/ecsinfo -c |  grep ",R," |  awk -F "," '{ print $1,$2,$3,$4,$15 }' | awk ' { a=(($5/60)/60)/24;print a " Days idle session ===> " , $0 " Seconds" }' | sort -n -k7 | egrep '\b(^[3-9]|^[1-2][0-9]\.)' | sort -n;
done
