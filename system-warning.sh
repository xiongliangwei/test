#!/bin/bash  

IP=`ifconfig eth0 | grep "inet addr" | cut -f 2 -d ":" | cut -f 1 -d " "`

cpu_num=`grep -c 'model name' /proc/cpuinfo`

load_15=`uptime | awk '{print $NF}'`

average_load=`echo "scale=2;a=$load_15/$cpu_num;if(length(a)==scale(a)) print 0;print a" | bc`

average_int=`echo $average_load | cut -f 1 -d "."`

load_warn=0.70

if (($average_int > 0)); then
      echo "$IP服务器15分钟的系统平均负载为$average_load，超过警戒值1.0，请立>即处理！！！" | mutt -s "$IP 服务器系统负载严重告警！！！"  1476201917@qq.com
else
load_now=`expr $average_load \> $load_warn`

 if (($load_now == 1)); then
    echo "$IP服务器15分钟的系统平均负载达到 $average_load，超过警戒值0.70，请>及时处理。" | mutt -s "$IP 服务器系统负载告警"  1476201917@qq.com 
 fi
fi
~           
