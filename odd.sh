#!/bin/bash
startTime=`date +%Y%m%d-%H:%M:%S`
startTime_s=`date +%s`
sum=0
for num in {1..10000..2};
do
	let sum=$sum+$num;
done
endTime=`date +%Y%m%d-%H:%M:%S`
endTime_s=`date +%s`
sumTime=$[ $endTime_s - $startTime_s ]

echo $sum
echo "$startTime ---> $endTime" "Total:$sumTime seconds"
