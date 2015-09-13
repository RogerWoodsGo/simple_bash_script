#!/bin/bash
#1.设定变量file的值为/etc/passwd
#2.使用循环读取文件/etc/passwd的第2,4,6,10,13,15行，并显示其内容
#3.把这些行保存至/tmp/mypasswd文件中
#

file_n="/etc/passwd"

#awk '{if(NR==2||NR==4||NR==6||NR==10||NR==13||NR==15)print $1}' $file_n

arry=(2  4  6  10  13)
for i in 2  4  6  10  13; do
    echo $i
    exec 3>"/tmp/passwd"
    head -n$i "$file_n" | tail -n1>&3
    exec 3>&-
    cat "/tmp/passwd"
done


