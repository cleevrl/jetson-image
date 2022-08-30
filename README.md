# Dependency (Base image)
* jetson-nano-jp461-sd-card-image

# Setting for jetson nano base image

```
git clone https://github.com/cleevrl/jetson-image.git
cd jetson-image/script
./init.sh
```

---

# Additional Settings

* Crontab 설정
```
crontab -e

# code 추가
59 2 * * * echo "dongbuict0" | sudo -S reboot now
```

* gnome-session-properties 설정 (GUI 연결 필요)
```
# gnome-terminal 추가
gnome-session-properties
```

* Python warning ignore
```
# /home/lds-nano/.local/lib/python3.6/site-packages/paramiko/transport.py 파일에 코드 추가

import warnings
warnings.filterwarnings(action='ignore', module='.*paramiko.*')
```

* Private Project clone
```
git clone https://github.com/cleevrl/left-detection.git
```
