#!/bin/bash



Free_Space=$(free -mt | grep "Total" | awk '{print $4}'
)
TH=500

if [ $Free_Space -ge $TH ]
then
        echo "RAM space is sufficient - $Free_Space M"
else
        echo "WARNING, RAm is running low"
fi



FU=$(df -H | egrep -v "tmpfs" | grep "xvda16" | awk '{print $5}' | tr -d '%')

if [ $FU -ge 80  ]
then
        echo "Warning, disk space is low"
else
        echo "All good $FU"
fi

