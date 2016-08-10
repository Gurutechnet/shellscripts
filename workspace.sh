#!/bin/sh	
#h=`hostname |  awk -F "-" ' { print $1 }'`
h=`hostname`
if [ $h == "bc-d1-4-3" ]
then
a=`xdotool get_desktop`
echo $a 
if [ $a == 2 ]
 then
ssh login1.nahpc.arm.com
fi
if [ $a == 0 ]
 then
ssh login1.blr.arm.com
fi
if [ $a == 6 ]
 then
ssh protex-prod.euhpc.arm.com
fi
fi
