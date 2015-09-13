#!/bin/bash
#这行命令比较常用，用于查找特定时间命名的文件
for i in `seq 20`
do
    touch tmp/2015091500$i.txt
done

find tmp -regextype posix-awk -regex ".*2015091500([1-9]|1[0-9]|20)\.txt" -printf "%f\n"
