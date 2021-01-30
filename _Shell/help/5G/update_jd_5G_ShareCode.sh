#!/bin/bash

path="/home/Scripts/RulesForSurge"

cd `dirname $0`
bash ./get_jd_5G_ShareCode.sh 3 4 1 2

cp -rf jd_5g.json ${path}/Scripts/JD/InviteCodes/jd_5g.json
rm -rf jd_5g.json

push_date=$(date)

cd ${path}
git pull
git add .
git commit -m "${push_date}"
git push origin main
