#!/bin/bash

mkdir /root/gist
wget https://gist.githubusercontent.com/nullenc0de/96fb9e934fc16415fbda2f83f08b28e7/raw/146f367110973250785ced348455dc5173842ee4/content_discovery_nullenc0de.txt -O /root/gist/content_discovery_nullenc0de.txt
wget https://gist.githubusercontent.com/nullenc0de/538bc891f44b6e8734ddc6e151390015/raw/a6cb6c7f4fcb4b70ee8f27977886586190bfba3d/passwords.txt -O /root/gist/passwords.txt
wget https://gist.githubusercontent.com/jhaddix/86a06c5dc309d08580a018c66354a056/raw/96f4e51d96b2203f19f6381c8c545b278eaa0837/all.txt -O /root/gist/all.txt
wget https://gist.githubusercontent.com/nullenc0de/9cb36260207924f8e1787279a05eb773/raw/0197d33c073a04933c5c1e2c41f447d74d2e435b/params.txt -O /root/gist/params.txt

#update
apt update

#Wapiti
apt install wapiti -y

#screen
sudo apt-get install screen -y

#Brutespray
apt-get install brutespray -y

#eyewitness
apt-get install eyewitness -y

#fimap
sudo apt-get install fimap -y

#sqlmap
sudo apt-get install commix -y

#sqlmap
sudo apt-get install sqlmap -y

# Gobuster
apt-get install -y gobuster

# Nmap
apt-get install -y nmap

# Amass
apt-get install -y amass

# Masscan
apt-get install -y masscan

# Parameth
git clone https://github.com/maK-/parameth.git || git -C /opt/parameth pull
pip3 install -r /opt/parameth/requirements.txt

# MassDNS
apt-get install -y gcc make libpcap-dev
git clone https://github.com/blechschmidt/massdns.git /opt/massdns || git -C /opt/massdns pull
cd /opt/massdns
make
ln -s /opt/massdns/bin/massdns /usr/local/bin/massdns
cd /opt

#Brutex
git clone https://github.com/1N3/BruteX.git || git -C /opt/Brutex pull
/opt/Brutex/install.sh

#Wayback urls
sudo git clone https://github.com/si9int/cc.py.git /opt/cc.py || git -C /opt/cc.py pull

#tehbucketeer
sudo git clone https://github.com/abhaybhargav/bucketeer.git  /opt/bucketeer || git -C /opt/bucketeer pull

# Subfinder
export GOPATH=/opt/subfinder
go get github.com/subfinder/subfinder
ln -s /opt/subfinder/bin/subfinder /usr/local/bin/subfinder

# HTTProbe
export GOPATH=/opt/httprobe
go get -u github.com/tomnomnom/httprobe
ln -s /opt/httprobe/bin/httprobe /usr/local/bin/httprobe

# Waybackurls
export GOPATH=/opt/waybackurls
go get -u github.com/tomnomnom/waybackurls
ln -s /opt/waybackurls/bin/waybackurls /usr/local/bin/waybackurls

# Gf
export GOPATH=/opt/gf
go get -u github.com/tomnomnom/gf
ln -s /opt/gf/bin/gf /usr/local/bin/gf
#source /opt/gf/src/github.com/tomnomnom/gf/gf-completion.bash

# Assetfinder
export GOPATH=/opt/assetfinder
go get -u github.com/tomnomnom/assetfinder
ln -s /opt/assetfinder/bin/assetfinder /usr/local/bin/assetfinder

# Anew
export GOPATH=/opt/anew
go get -u github.com/tomnomnom/anew
ln -s /opt/anew/bin/anew /usr/local/bin/anew

# Html-tool
export GOPATH=/opt/html-tool
go get -u github.com/tomnomnom/hacks/html-tool
ln -s /opt/html-tool/bin/html-tool /usr/local/bin/html-tool

# Gowitness
export GOPATH=/opt/gowitness
go get -u github.com/sensepost/gowitness
ln -s /opt/gowitness/bin/gowitness /usr/local/bin/gowitness

#Altdns
git clone https://github.com/infosec-au/altdns.git /opt/altgen || git -C /opt/altdns pull
pip3 install -r /opt/altdns/requirements.txt
python3 /opt/altdns/setup.py install

# Dnsgen
git clone https://github.com/ProjectAnte/dnsgen /opt/dnsgen || git -C /opt/dnsgen pull
pip3 install -r /opt/dnsgen/requirements.txt
python3 /opt/dnsgen/setup.py install

# Dirsearch
git clone https://github.com/maurosoria/dirsearch.git /opt/dirsearch || git -C /opt/dirsearch pull
ln -s /opt/dirsearch/dirsearch.py /usr/local/bin/dirsearch
chmod +x /usr/local/bin/dirsearch

# SubBrute
git clone https://github.com/TheRook/subbrute.git /opt/subbrute || git -C /opt/subbrute pull
ln -s /opt/subbrute/subbrute.py /usr/local/bin/subbrute
chmod +x /usr/local/bin/subbrute

# Striker
git clone https://github.com/s0md3v/Striker.git /opt/striker || git -C /opt/striker pull
pip3 install -r /opt/striker/requirements.txt
ln -s /opt/striker/striker.py /usr/local/bin/striker
chmod +x /usr/local/bin/striker

# XSStrike
git clone https://github.com/s0md3v/XSStrike.git /opt/xsstrike || git -C /opt/xsstrike pull
pip3 install -r /opt/xsstrike/requirements.txt
ln -s /opt/xsstrike/xsstrike.py /usr/local/bin/xsstrike
chmod +x /usr/local/bin/xsstrike

#Configure MSF
sudo service postgresql start
msfdb init
