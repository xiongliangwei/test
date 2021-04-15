#!/bin/bash
num1=$1
num2=$2
 
if [ $# -ne 2 ] ;then
   echo 'please input num1 & num2:'
exit
fi

if [ $num1 -gt $num2 ] ; then
   echo $num1 great than $num2
 
else if [ $num1 -lt $num2 ] ; then
   echo $num1 less than $num2
 
else
   echo $num1 equal $num2
 
fi   
fi

