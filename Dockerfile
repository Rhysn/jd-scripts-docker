FROM ubuntu:20.04
ENV DEBIAN_FRONTEND="noninteractive"
RUN sed -i 's/^\(deb\|deb-src\) \([^ ]*\) \(.*\)/\1 http:\/\/mirrors.cloud.aliyuncs.com\/ubuntu \3/' /etc/apt/sources.list \
    && apt update && apt install --fix-missing -y cron openssl coreutils git wget tzdata nodejs npm \
    && echo "Asia/Shanghai" > /etc/timezone && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && service cron start 

RUN git clone https://github.com/Rhysn/jd_scripts.git /scripts \
    && git clone https://github.com/Rhysn/jd-scripts-docker.git /jd-scripts-docker

WORKDIR /
RUN bash /jd-scripts-docker/sync.sh
CMD crontab -l && cron -f