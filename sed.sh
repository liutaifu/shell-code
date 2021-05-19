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


#sed 's/.*MtkCam/MtkCam/g' 1.txt  修改MtkCam之前的所有字符为空
#sed 'numccode' 1.txt  把num行改为"code"定义的字符
#sed -i 'numccode' 1.txt  把num行改为"code"定义的字符,并将修改写入1.txt文件
#sed 'numicode' 1.txt 在num行前加入'code'定义的字符行
#sed 'numacode' 1.txt 在num行加入“code”定义的字符行
