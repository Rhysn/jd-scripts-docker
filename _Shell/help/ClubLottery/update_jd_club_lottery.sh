#!/bin/bash

path="/home/Scripts/RulesForSurge"

cd `dirname $0`
bash ./get_jd_club_lottery.sh 3 4 1 2

cp -rf jd_club_lottery.json ${path}/Scripts/JD/InviteCodes/jd_club_lottery.json
rm -rf jd_club_lottery.json

push_date=$(date)

cd ${path}
git pull
git add .
git commit -m "${push_date}"
git push origin main