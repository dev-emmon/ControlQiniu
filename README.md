# 七牛云监控

## 环境搭建
```bash
# 下载 install.sh 文件
wget https://raw.githubusercontent.com/dev-emmon/ControlQiniu/master/install.sh

# 运行安装程序
bash install
```


## 添加 开机启动
```bash
# 编辑 rc.local
vi /etc/rc.local

# 在 exit0 前面添加如下：
su - pi -c "/usr/local/node/bin/pm2 start ~/oprint/lib/node/edu_live/contor_index.js"
```

## 修改合资信息
```bash
vi ~/oprint/lib/node/edu_live/contor_index.js

var form = {
    name: 'xxxxxx',
    uuid: xxxxxxx,
    type: '2'
};

```

**主要**
如果运行 node 程序时报缺少插件
```
# 安装 nodejs 插件
cd ~
npm install request --registry https://registry.npm.taobao.org install express
npm install glob --registry https://registry.npm.taobao.org install express
npm install fluent-ffmpeg --registry https://registry.npm.taobao.org install express
npm install -g pm2 --registry https://registry.npm.taobao.org install express
```











<!-- 
2. wget 下载 install.sh 文件
```bash

```

3. 运行相应的 bash 命令安装软件
```bash
```
1. 安装 Nodejs
```bash
# 下 nodejs 二进制包
wget https://nodejs.org/dist/latest-v4.x/node-v4.8.4-linux-armv7l.tar.gz

# 解压
tar zxvf node-v4.8.4-linux-armv7l.tar.gz

# 移动到 /usr/local 目录
sudo mv node-v4.8.4-linux-armv7l /usr/local
sudo mv node-v4.8.4-linux-armv7l node

# 加入到环境
vi ~/.bash_profile

export NODE_HOME=/usr/local/node/ 
export PATH=$NODE_HOME/bin:$PATH

# 安装 插件
cd ~
npm install request --registry https://registry.npm.taobao.org install express
npm install glob --registry https://registry.npm.taobao.org install express
npm install fluent-ffmpeg --registry https://registry.npm.taobao.org install express
```

2. 安装 ffmpeg
```bash
# 下载 ffmpeg 包
wget http://demo.xinqigu.com/ffmpeg-3.2.2.tar.bz2

# 解压
tar jxvf ffmpeg-3.2.2.tar.bz2

# 移动
sudo mv ffmpeg-3.2.2 /usr/local/
sudo mv ffmpeg-3.2.2 ffmpeg
# 加入到环境
vi ~/.bash_profile

export NODE_HOME=/usr/local/node/ 
export PATH=$NODE_HOME/bin:$PATH


## libx264 support
git clone git://git.videolan.org/x264
cd x264
./configure --prefix=/usr/local/x264 --enable-static --disable-opencl
./configure --host=arm-unknown-linux-gnueabi --enable-static --disable-opencl
make
sudo make install

## ffmpeg
git clone git://git.ffmpeg.org/ffmpeg
cd ffmpeg
./configure --prefix=/usr/local/ffmpeg --enable-libx264
sudo ./configure --arch=armel --target-os=linux --enable-gpl --enable-libx264 --enable-nonfree
make # 这一步可能相当相当漫长，在我这里跑了有一个多小时
sudo make install
``` -->