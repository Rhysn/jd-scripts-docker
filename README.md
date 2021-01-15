## jd-scripts-docker
京东薅羊毛脚本https://github.com/lxk0301/jd_scripts 的Docker部署方式。

### 环境说明
因默认使用阿里云**内网**软件源，所以仅可在阿里云服务器上运行。

但可通过修改 `Dockerfile` 文件中的 `mirrors.cloud.aliyuncs.com` 部分来适配其他环境。

其他软件源（公网）实例：

> mirrors.aliyun.com

> mirrors.cloud.tencent.com

### 安装依赖
git docker docker-compose
### 下载
```sh
git clone https://github.com/chinnkarahoi/jd-scripts-docker
cd jd-scripts-docker
```
### 获取cookie

#### 方法一
通过执行如下命令，京东APP扫码登录获取。

```sh
docker exec jd1 bash -c "node /scripts/getJDCookie.js"
```

#### 方法二
访问 `https://bean.m.jd.com` 手机号登录获取cookie中的pt_key, pt_pin填入项目目录下的./env/env1文件,  
(此方式cookie有效时长大概31天，其他登录方式比较短)。

### 微信推送（可选）
cookie失效推送[server酱的微信通知](http://sc.ftqq.com/3.version)，获取到SCKEY后填到./env/all的PUSH_KEY。
### 启动

```sh
docker-compose up --build --force-recreate --detach jd1
```

### 测试正确性
签到测试

```sh
docker exec jd1 bash -c 'exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /all; source /env; source /cookies; node /scripts/jd_bean_sign.js > /logs/jd_bean_sign.log'
```

查看 `logs/logs1/jd_bean_sign.log` 确认可以签到等操作后，即可每天定时执行脚本。

### 获取助力码
查看对应日志获取助力码

### 更多配置
比如微信推送，各种活动控制，需要配置./env/all文件, 具体参数的含义可以参考[Secrets全集合](https://github.com/lxk0301/jd_scripts/blob/master/githubAction.md)

### 多账号
使用多容器的方式，好处：
1. 脚本并行
2. 每个账号可以有不同的配置，比如配置微信推送
#### 配置
添加第二个账号：以上所有操作中的`1`替换成`2`, 然后重复之前所有操作。  
超过三个账号需要手动创建./env/env5，修改./docker-compose.yml文件
#### 配置文件说明
所有账号共享的参数需要配置./env/all, 每个账号独立参数需要配置./env/env*，  
每个账号配置的参数会覆盖共享参数，每个账号未配置参数的继承共享的参数

### 其他
- 查看log
```sh
cat /logs/logs1/*.log
```
- 停止
```sh
docker-compose down
```
