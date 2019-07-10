#!/bin/bash

#修改for循环中空格键换行
IFD=$IFS
IFS=$'\n'

echo $1
echo $2
echo $3
echo $4
echo $5
for var in  `grep -$1 $2 $3`;
do
#echo hello
echo ${var#*$4} >>$5
done

IFS=$IFD
#sed -i 's/D/H/g' $var
