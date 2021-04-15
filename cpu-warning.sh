#!/bin/bash 

IP=`ifconfig eth0 | grep "inet addr" | cut -f 2 -d ":" | cut -f 1 -d " "` 

cpu_idle=`top -b -n 1 | grep Cpu | awk '{print $5}' | cut -f 1 -d "."` 
  
if (($cpu_idle < 20)); then 
      echo "$IP服务器cpu剩余$cpu_idle%，使用率已经超过80%，请及时处理。" | mutt -s "$IP 服务器CPU告警"  1476201917@qq.com 
fi
