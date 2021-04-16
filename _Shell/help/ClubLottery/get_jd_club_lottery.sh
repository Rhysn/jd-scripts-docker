#!/bin/bash
cd `dirname $0`
num=0
sharecodes=""
sharecodes2=""
for item in "$@"; do
    path="../../../logs/logs${item}/jd_club_lottery.log"
    sharecode=$(cat ${path} | grep '助力任务好友邀请码：' | sed '助力任务好友邀请码：//g')
    encryptAssignmentId=$(cat ${path} | grep '助力任务好友encryptAssignmentId：' | sed '助力任务好友encryptAssignmentId：//g')
    assignmentType=$(cat ${path} | grep '助力任务好友assignmentType：' | sed '助力任务好友assignmentType：//g')

    temp="{\"encryptAssignmentId\": \"${encryptAssignmentId}\",\"assignmentType\": ${assignmentType},\"itemId\": \"${sharecode}\"}"

    if [ $num -eq 0 ]
    then
        sharecodes=${temp}
    else
        sharecodes="${sharecodes},${temp}"
    fi
    let num+=1
done

sharecodes_str="[${sharecodes}]"
echo ${sharecodes_str} > jd_club_lottery.json


