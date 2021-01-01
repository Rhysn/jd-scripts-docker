#!/bin/bash
cd `dirname $0`
num=0
teamids=""
activeid=""
for item in "$@"; do
    path="../../../logs/logs${item}/jd_dreamFactory.log"
    teamid=$(cat ${path} | grep '团ID  ' | sed 's/团ID  //g')
    if [ $num -eq 0 ]
    then
        id=$(cat ${path} | grep '团活动ID  ' | sed 's/团活动ID  //g')
        teamids="\"${teamid}\""
        activeid="\"${id}\""
    else
        teamids="${teamids},\"${teamid}\""
    fi
    let num+=1
done

team_json="{\"tuanActiveId\":${activeid},
\"tuanIds\":[${teamids}]}"
echo ${team_json} > jd_updateFactoryTuanId.json