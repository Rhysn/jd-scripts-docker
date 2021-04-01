#!/bin/bash
cd `dirname $0`
num=0
sharecodes=""
for item in "$@"; do
    path="../../../logs/logs${item}/jd_carnivalcity.log"
    sharecode=$(cat ${path} | grep '【京东账号1（.+）的京东手机狂欢城好友互助码】' | sed 's/【京东账号1（.+）的京东手机狂欢城好友互助码】//g')
    if [ $num -eq 0 ]
    then
        sharecodes="${sharecode}"
    else
        sharecodes="${sharecodes}@${sharecode}"
    fi
    let num+=1
done

sharecodes_str="JD818_SHARECODES=${sharecodes}"
echo ${sharecodes_json} > jd_818