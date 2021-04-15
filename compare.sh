#!bin/bash

echo "Please input two numbers:  "
read a
read b
if [ $a -eq $b ]; then
		echo "$a is equal to $b"
		else if [ $a -gt $b ]; then
		echo  "The greater is $a,the less is $b"
else
		echo "The greater is $b,the less is $a"
  fi 
fi
