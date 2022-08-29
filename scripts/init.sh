#!/bin/bash

echo "dongbuict0" | sudo -S apt-get update
echo "dongbuict0" | sudo -S apt-get install -y netplan.io python3-pip python3-dev filezilla

mkdir ~/lds-logs

pip3 install --upgrade pip
python3 -m pip install docker-compose

echo "dongbuict0" | sudo -S -H pip3 install -U jetson-stats

wget "https://download.nomachine.com/download/7.10/Arm/nomachine_7.10.1_1_arm64.deb" -P ~/Downloads/
echo "donbguict0" | sudo dpkg -i ~/Downloads/nomachine_7.10.1_1_arm64.deb

cp ~/.bashrc ~/.bashrc_backup
echo 'xhost +local:docker' >> ~/.bashrc
echo 'echo "dongbuict0" | sudo -S chmod 666 /var/run/docker.sock' >> ~/.bashrc
echo 'cd ~/left-detection/startup' >> ~/.bashrc
echo 'source ./lds_start.sh' >> ~/.bashrc

echo "dongbuict0" | sudo -S cp ./net_config/net_nano_10.yaml /etc/netplan/config.yaml
echo "dongbuict0" | sudo -S netplan apply

cd ~
git clone https://github.com/Pyrestone/jetson-fan-ctl.git
cd ~/jetson-fan-ctl
./install.sh

echo "dongbuict0" | sudo -S service automagic-fan restart
