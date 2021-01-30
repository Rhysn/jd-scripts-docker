#!/bin/bash

path="/home/Scripts/RulesForSurge"

cd `dirname $0`
bash ./get_jd_818_ShareCode.sh 3 4 1 2

cp -rf jd_818.json ${path}/Scripts/JD/InviteCodes/jd_5g.json
rm -rf jd_818.json

push_date=$(date)

cd ${path}
git pull
git add .
git commit -m "${push_date}"
git push origin main