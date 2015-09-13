#!/bin/bash
#1.设定变量FILE的值为/etc/passwd
#2.依次向/etc/passwd中的每个用户问好，并且说出对方的ID是什么
#形如：（提示：LINE=`wc -l /etc/passwd | cut -d" " -f1`)
#Hello,root，your UID is 0.
#3.统计一个有多少个用户

cat /etc/passwd | awk -F ":" 'BEGIN{num=0}{printf("hello %s\n", $1);printf("the user %s has id %s\n", $1, $3)}'

echo "the total user is:"
cat /etc/passwd | wc -l



