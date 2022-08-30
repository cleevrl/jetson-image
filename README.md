# Setting for jetson nano base image

git clone https://github.com/cleevrl/jetson-image.git
cd jetson-image/script
./init.sh

---

# Additional Settings

* Crontab 설정
crontab -e
59 2 * * * echo "dongbuict0" | sudo -S reboot now

* gnome-session-properties 설정
gnome-session-properties
gnome-terminal 추가

* Python warning ignore
/home/lds-nano/.local/lib/python3.6/site-packages/paramiko/transport.py

import warnings
warnings.filterwarnings(action='ignore', module='.*paramiko.*') 추가

* Private Project clone
git clone https://github.com/cleevrl/left-detection.git

---