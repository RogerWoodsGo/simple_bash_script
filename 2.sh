#!/bin/bash
#1.切换工作目录至/var
#2.依次向/var目录中的每个文件或子目录问好，形如：
#（提示：for FILE in /var/*;或for FILE in `ls /var`;)
#Hello,log
#3.统计/var目录下共有多个文件，并显示出来
#用ｌｓ更简单，但为了练习ｆｉｎｄ

cd /var
count=0
dir_num=0
for f in `find . -maxdepth 1 -name "[^.]*" -printf "%f\n"`
do
    echo "hello", $f
    if [ -f $f ]
    then
        count=$count+1
    else
        dir_num=$[$dir_num+1]
    fi
done

echo "the total number of files is: " $count
echo "the total number of directory is: " $dir_num

cd -
