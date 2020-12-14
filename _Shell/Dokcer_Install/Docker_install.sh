#!/bin/bash
#Docker && docker-compose 1.27.4
#默认源

sudo apt update

sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# GPG证书
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# Ali软件源信息
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# 安装Docker-CE
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io

# docker-compose 1.27.4
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
#sudo apt install -y docker-compose

# sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
