#!/bin/bash

echo "#!/bin/bash" > help.sh


CONTAINER_NAME="hp1"

for CN in ${CONTAINER_NAME}; do
    echo "docker start ${CN}" >> help.sh
    echo "docker exec ${CN} bash -c 'crontab -r'" >> help.sh
    echo "docker exec ${CN} bash -c \"date > /logs/sync.log && bash /sync 1>/proc/1/fd/1 2>/proc/1/fd/2 >> /logs/sync.log\"" >> help.sh
    echo "docker exec ${CN} bash -c 'crontab -r'" >> help.sh
    echo "docker exec ${CN} bash -c \"exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_lotteryMachine.js > /logs/jd_lotteryMachine.log | sed 's/^/ 【京东抽奖机】/'; \"" >> help.sh
    echo "docker exec ${CN} bash -c \"exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_pet.js > /logs/jd_pet.log | sed 's/^/ 【东东萌宠】/'; \"" >> help.sh
    echo "docker exec ${CN} bash -c \"exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_fruit.js > /logs/jd_fruit.log | sed 's/^/ 【东东农场】/'; \"" >> help.sh
    echo "docker exec ${CN} bash -c \"exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_plantBean.js > /logs/jd_plantBean.log | sed 's/^/ 【种豆得豆】/'; \"" >> help.sh
    echo "docker exec ${CN} bash -c \"exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_dreamFactory.js > /logs/jd_dreamFactory.log | sed 's/^/ 【京喜工厂】/'; \"" >> help.sh
    echo "docker exec ${CN} bash -c \"exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_jdfactory.js > /logs/jd_jdfactory.log | sed 's/^/ 【东东工厂】/'; \"" >> help.sh
    echo "docker exec ${CN} bash -c \"exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_small_home.js > /logs/jd_small_home.log | sed 's/^/ 【东东小窝】/'; \"" >> help.sh
    echo "docker exec ${CN} bash -c \"exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_apple_live.js > /logs/jd_apple_live.log | sed 's/^/ 【苹果抽奖机】/'; \"" >> help.sh
    echo "docker kill ${CN}" >> help.sh
done

bash help.sh
rm help.sh