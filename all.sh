#!/bin/bash
# docker exec jd1 bash -c 'bash /jd-scripts-docker/all.sh'

bash /sync 1>/proc/1/fd/1 2>/proc/1/fd/2 > /logs/sync.log && date >> /logs/sync.log 2>&1
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_moneyTree.js > /logs/jd_moneyTree.log 2>&1 | sed 's/^/ 【京东摇钱树】/'; "
# bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_ghec.js > /logs/jd_ghec.log 2>&1 | sed 's/^/ 【个护爱消除】/'; "
# bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_gyec.js > /logs/jd_gyec.log 2>&1 | sed 's/^/ 【工业品爱消除】/'; "
# bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_xxl.js > /logs/jd_xxl.log 2>&1 | sed 's/^/ 【京东爱消除】/'; "
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_jdfactory.js > /logs/jd_jdfactory.log 2>&1 | sed 's/^/ 【东东工厂】/'; "
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_joy.js > /logs/jd_joy.log 2>&1 | sed 's/^/ 【宠汪汪】/'; "
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_joy_feedPets.js > /logs/jd_joy_feedPets.log 2>&1 | sed 's/^/ 【宠汪汪喂食脚本】/'; "
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_superMarket.js > /logs/jd_superMarket.log 2>&1 | sed 's/^/ 【东东超市】/'; "
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_speed.js > /logs/jd_speed.log 2>&1 | sed 's/^/ 【天天加速】/'; "
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_dreamFactory.js > /logs/jd_dreamFactory.log 2>&1 | sed 's/^/ 【京喜工厂】/'; "
# 00:00 >>
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_shop.js > /logs/jd_shop.log 2>&1 | sed 's/^/ 【进店领豆脚本】/'; "
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_jdzz.js > /logs/jd_jdzz.log 2>&1 | sed 's/^/ 【京东赚赚】/'; "
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_necklace.js > /logs/jd_necklace.log 2>&1 | sed 's/^/ 【点点券】/'; "
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_bean_sign.js > /logs/jd_bean_sign.log 2>&1 | sed 's/^/ 【京豆签到脚本】/'; "
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_club_lottery.js > /logs/jd_club_lottery.log 2>&1 | sed 's/^/ 【摇京豆脚本】/'; "
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_super_box.js > /logs/jd_super_box.log 2>&1 | sed 's/^/ 【京东超级盒子】/'; "
# 01:00 >>
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_redPacket.js > /logs/jd_redPacket.log 2>&1 | sed 's/^/ 【全民开红包脚本】/'; "
# 02:00 >>
# 03:00 >>
# 04:00 >>
# 05:00 >>
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_pigPet.js > /logs/jd_pigPet.log 2>&1 | sed 's/^/ 【金融养猪】/'; "
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_small_home.js > /logs/jd_small_home.log 2>&1 | sed 's/^/ 【东东小窝】/'; "
# 06:00 >>
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_kd.js > /logs/jd_kd.log 2>&1 | sed 's/^/ 【京东快递】/'; "
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_pet.js > /logs/jd_pet.log 2>&1 | sed 's/^/ 【东东萌宠】/'; "
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_rankingList.js > /logs/jd_rankingList.log 2>&1 | sed 's/^/ 【京东排行榜】/'; "
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_lotteryMachine.js > /logs/jd_lotteryMachine.log 2>&1 | sed 's/^/ 【京东抽奖机】/'; "
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_fruit.js > /logs/jd_fruit.log 2>&1 | sed 's/^/ 【东东农场】/'; "
# 07:00 >>
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_plantBean.js > /logs/jd_plantBean.log 2>&1 | sed 's/^/ 【种豆得豆】/'; "
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_ms.js > /logs/jd_ms.log 2>&1 | sed 's/^/ 【京东秒秒币】/'; "
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_xg.js > /logs/jd_xg.log 2>&1 | sed 's/^/ 【小鸽有礼】/'; "
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_xgyl.js > /logs/jd_xgyl.log 2>&1 | sed 's/^/ 【小鸽有礼2】/'; "
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_bean_home.js > /logs/jd_bean_home.log 2>&1 | sed 's/^/ 【任务京豆】/'; "
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_crazy_joy.js > /logs/jd_crazy_joy.log 2>&1 | sed 's/^/ 【疯狂Joy】/';  "
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_car.js > /logs/jd_car.log 2>&1 | sed 's/^/ 【京东汽车】/'; "
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jx_sign.js > /logs/jx_sign.log 2>&1 | sed 's/^/ 【京喜签到】/'; "
# 08:00 >>
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_syj.js > /logs/jd_syj.log 2>&1 | sed 's/^/ 【十元街】/'; "
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_bookshop.js > /logs/jd_bookshop.log 2>&1 | sed 's/^/ 【口袋书店】/'; "
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_cash.js > /logs/jd_cash.log 2>&1 | sed 's/^/ 【京东领现金】/'; "
# 09:00 >>
# 10:00 >>
# 11:00 >>
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_live.js > /logs/jd_live.log 2>&1 | sed 's/^/ 【京东直播】/'; "
# 12:00 >>
# 13:00 >>
# 14:00 >>
# 15:00 >>
# 16:00 >>
# 17:00 >>
# 18:00 >>
# 19:00 >>
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_live_redrain2.js > /logs/jd_live_redrain2.log 2>&1 | sed 's/^/ 【直播红包雨】/'; "
# 20:00 >>
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_live_redrain.js > /logs/jd_live_redrain.log 2>&1 | sed 's/^/ 【超级直播间红包雨】/'; "
# 21:00 >>
# 22:00 >>
# 23:00 >>
bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_unsubscribe.js > /logs/jd_unsubscribe.log 2>&1 | sed 's/^/ 【京东取关商品】/'; "
