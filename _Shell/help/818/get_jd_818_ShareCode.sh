#!/bin/bash
cd `dirname $0`
num=0
sharecodes=""
for item in "$@"; do
    path="../../../logs/logs${item}/jd_818.log"
    sharecode=$(cat ${path} | grep '您的助力码shareId(互助码每天都是变化的)' | sed 's/您的助力码shareId(互助码每天都是变化的)//g')
    if [ $num -eq 0 ]
    then
        sharecodes="\"${sharecode}\""
    else
        sharecodes="${sharecodes},\"${sharecode}\""
    fi
    let num+=1
done

sharecodes_json="{\"code\": 200, \"message\": \"Three words and eight letters. \", \"shareCodes\": [${sharecodes}],\"powered by\": \"GITHUB\"}"
echo ${sharecodes_json} > jd_818.json