#!/bin/bash
#传递两个整数给脚本，让脚本分别计算并显示这两个整数的和，差，积，商
a=$1
b=$2

echo "sum is:" $[$a + $b]
echo "sub is:" $[$a - $b]
echo "mul is:" $[$a * $b]
if [ $b -ne 0 ]
then
    echo "divied is:" $[$a / $b]
fi


