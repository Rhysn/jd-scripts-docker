#!/bin/bash

path="/home/Scripts/RulesForSurge"

docker exec jd3 bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_small_home.js > /logs/jd_small_home.log 2>&1 | sed 's/^/ 【东东小窝】/'; "
docker exec jd4 bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_small_home.js > /logs/jd_small_home.log 2>&1 | sed 's/^/ 【东东小窝】/'; "

cd `dirname $0`
bash ./get_jd_SmallHomeInviteCode.sh 3 4

cp -rf jd_updateSmallHomeInviteCode.json ${path}/Scripts/JD/InviteCodes/jd_updateSmallHomeInviteCode.json
rm -rf jd_updateSmallHomeInviteCode.json

push_date=$(date)

cd ${path}
git pull
git add .
git commit -m "${push_date}"
git push origin main
