#!/bin/bash

path="/home/Scripts/RulesForSurge"

cd `dirname $0`
bash ./get_jd_carnivalcity_ShareCode.sh 3 4 1 2

cp -rf jd_818 ${path}/Scripts/JD/InviteCodes/jd_818
cp -rf jd_carnivalcity ${path}/Scripts/JD/InviteCodes/jd_carnivalcity
rm -rf jd_818 jd_carnivalcity

push_date=$(date)

cd ${path}
git pull
git add .
git commit -m "${push_date}"
git push origin main