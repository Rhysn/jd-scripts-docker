#!/bin/bash

trap 'cp -rf /jd-scripts-docker/sync.sh /sync' Exit

cd /jd-scripts-docker || exit 1
git pull

cd /scripts || exit 1
git pull

npm install --registry=https://registry.npm.taobao.org || npm install || exit 1

crontab -r
crontab /jd-scripts-docker/crontab.list
crontab -l
