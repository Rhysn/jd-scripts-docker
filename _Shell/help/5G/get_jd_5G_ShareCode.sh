#!/bin/bash
cd `dirname $0`
num=0
sharecodes=""
for item in "$@"; do
    path="../../../logs/logs${item}/jd_5g.log"
    sharecode=$(cat ${path} | grep '您的好友助力码为：' | sed 's/您的好友助力码为：//g')
    if [ $num -eq 0 ]
    then
        sharecodes="\"${sharecode}\""
    else
        sharecodes="${sharecodes},\"${sharecode}\""
    fi
    let num+=1
done

sharecodes_json="{\"code\": 200, \"message\": \"Three words and eight letters. \", \"data\": [${sharecodes}],\"powered by\": \"GITHUB\"}"
echo ${sharecodes_json} > jd_5g.json