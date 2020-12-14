#!/bin/bash
#Docker && docker-compose 1.27.4
#阿里镜像（公网）

#使用Ali源
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
sudo sed -i 's/^\(deb\|deb-src\) \([^ ]*\) \(.*\)/\1 http:\/\/mirrors.aliyun.com\/ubuntu \3/' /etc/apt/sources.list

sudo apt clean all
sudo apt update
sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# GPG证书
curl -fsSL https://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | sudo apt-key add -
# Ali软件源信息
sudo add-apt-repository \
   "deb [arch=amd64] https://mirrors.aliyun.com/docker-ce/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# 安装Docker-CE
sudo apt -y update
sudo apt -y install docker-ce docker-ce-cli containerd.io

# docker-compose 1.27.4
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
## sudo apt install -y docker-compose

## sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# 使用阿里Docker镜像加速，registry-mirrors 部分需要修改
## sudo mkdir -p /etc/docker
## sudo tee /etc/docker/daemon.json <<-'EOF'
## {
##   "registry-mirrors": ["https://***.mirror.aliyuncs.com"]
## }
## EOF
## sudo systemctl daemon-reload
## sudo systemctl restart docker