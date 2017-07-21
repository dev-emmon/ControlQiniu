#!/bin/bash

# 首先删除已经安装的相关包
sudo apt-get -y remove ffmpeg x264 libav-tools libvpx-dev libx264-dev

# 更新软件源
sudo apt-get update

# 安装 git
sudo apt-get install git

# cd 到 /home/pi目录
cd /home/pi
# git 下载必要的软件安装包
git clone https://github.com/dev-emmon/ControlQiniu.git
cd ControlQiniu

# 安装 nodejs
wget https://nodejs.org/dist/latest-v4.x/node-v4.8.4-linux-armv7l.tar.gz
tar zxvf node-v4.8.4-linux-armv7l.tar.gz
sudo mv node-v4.8.4-linux-armv7l node
sudo mv node /usr/local

node_home="export NODE_HOME=/usr/local/node/"
node_path="export PATH=\$NODE_HOME/bin:\$PATH"
echo $node_home >> ~/.bash_profile
echo $node_path >> ~/.bash_profile
cat ~/.bash_profile

# 安装 nodejs 插件
cd /home/pi
npm install request --registry https://registry.npm.taobao.org install express
npm install glob --registry https://registry.npm.taobao.org install express
npm install fluent-ffmpeg --registry https://registry.npm.taobao.org install express

# 安装 x264
sudo apt-get -y install libx264-dev
cd /home/pi/ControlQiniu/
tar jxvf x264.tar.bz2
cd x264
./configure --host=arm-unknown-linux-gnueabi --enable-static --disable-opencl
sudo make
sudo make install


#安装 ffmpeg
cd /home/pi/ControlQiniu
tar jxvf ffmpeg-3.2.2.tar.bz2
cd ffmpeg-3.2.2
./configure --prefix=/usr/local/ffmpeg --enable-gpl --enable-libx264
sudo make # 这一步可能相当相当漫长
sudo make install