#!/bin/bash

mkdir /root/gist
wget https://gist.githubusercontent.com/nullenc0de/96fb9e934fc16415fbda2f83f08b28e7/raw/146f367110973250785ced348455dc5173842ee4/content_discovery_nullenc0de.txt -O /root/gist/content_discovery_nullenc0de.txt
wget https://gist.githubusercontent.com/nullenc0de/538bc891f44b6e8734ddc6e151390015/raw/a6cb6c7f4fcb4b70ee8f27977886586190bfba3d/passwords.txt -O /root/gist/passwords.txt
wget https://gist.githubusercontent.com/jhaddix/86a06c5dc309d08580a018c66354a056/raw/96f4e51d96b2203f19f6381c8c545b278eaa0837/all.txt -O /root/gist/all.txt
wget https://gist.githubusercontent.com/nullenc0de/9cb36260207924f8e1787279a05eb773/raw/0197d33c073a04933c5c1e2c41f447d74d2e435b/params.txt -O /root/gist/params.txt

#update
apt update
apt install python3-pip -y
apt-get install python3-venv libxml2 libxml2-dev libz-dev libxslt1-dev python3-dev -y
apt-get install libcurl4-openssl-dev libpcre3-dev libssh-dev -y

#screen
sudo apt-get install screen -y

Empire
apt install powershell-empire

#Brutespray
apt-get install brutespray -y

#commix
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

#Kadimus
git clone https://github.com/P0cL4bs/Kadimus.git /opt/Kadimus || git -C /opt/kadimus pull
cd /opt/Kadimus
make
cd ..

# Arjun
git clone https://github.com/s0md3v/Arjun.git /opt/Arjun || git -C /opt/parameth pull
ln -s /opt/Arjun/arjun.py /usr/local/bin/arjun
chmod +x /usr/local/bin/arjun

# Linkfinder
git clone https://github.com/GerbenJavado/LinkFinder.git || git -C /opt/LinkFinder pull
cd /opt/LinkFinder
python3 setup.py install
cd ..

#cme
apt-get install python3-venv
python3 -m pip install pipx
pipx ensurepath
pipx install crackmapexec

#tehbucketeer
sudo git clone https://github.com/abhaybhargav/bucketeer.git  /opt/bucketeer || git -C /opt/bucketeer pull

export GOPATH=/opt/ssrf-finder
go get -u github.com/random-robbie/ssrf-finder
ln -s /opt/ssrf-finder/bin/ssrf-finder /usr/local/bin/ssrf-finder

export GOPATH=/opt/httpx
go get -u github.com/projectdiscovery/httpx/cmd/httpx
ln -s /opt/httpx/bin/httpx /usr/local/bin/httpx

export GOPATH=/opt/wildcheck
go get -u github.com/theblackturtle/wildcheck
ln -s /opt/wildcheck/bin/wildcheck /usr/local/bin/wildcheck

export GOPATH=/opt/nuclei
go get -u -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei
ln -s /opt/nuclei/bin/nuclei /usr/local/bin/nuclei

export GOPATH=/opt/subjs
go get -u -v github.com/lc/subjs
ln -s /opt/subjs/bin/subjs /usr/local/bin/subjs

export GOPATH=/opt/kxss
go get -u github.com/tomnomnom/hacks/kxss
ln -s /opt/kxss/bin/kxss /usr/local/bin/kxss

export GOPATH=/opt/gospider
go get -u github.com/jaeles-project/gospider
ln -s /opt/gospider/bin/gospider /usr/local/bin/gospider

export GOPATH=/opt/filter-resolved
go get -u github.com/tomnomnom/hacks/filter-resolved
ln -s /opt/filter-resolved/bin/filter-resolved /usr/local/bin/filter-resolved

export GOPATH=/opt/unfurl
go get -u github.com/tomnomnom/hacks/unfurl
ln -s /opt/unfurl/bin/unfurl /usr/local/bin/unfurl

export GOPATH=/opt/cidr2ip
go get -u github.com/codeexpress/cidr2ip
ln -s /opt/cidr2ip/bin/cidr2ip /usr/local/bin/cidr2ip

export GOPATH=/opt//anti-burl
go get -u github.com/tomnomnom/hacks/anti-burl
ln -s /opt/anti-burl/bin/anti-burl /usr/local/bin//anti-burl

export GOPATH=/opt/ffuf
go get -u github.com/ffuf/ffuf
ln -s /opt/ffuf/bin/ffuf /usr/local/bin/ffuf

export GOPATH=/opt/get-title
go get -u github.com/tomnomnom/hacks/get-title
ln -s /opt/get-title/bin/get-title /usr/local/bin/get-title

export GOPATH=/opt/gau
go get -u github.com/lc/gau
ln -s /opt/gau/bin/gau /usr/local/bin/gau

export GOPATH=/opt/tko-subs
go get github.com/anshumanbh/tko-subs
ln -s /opt/tko-subs/bin/tko-subs /usr/local/bin/tko-subs

export GOPATH=/opt/webanalyze
go get -u github.com/rverton/webanalyze/...
ln -s /opt/webanalyze/bin/webanalyze /usr/local/bin/webanalyze

export GOPATH=/opt/otxurls
go get -u github.com/lc/otxurls
ln -s /opt/otxurls/bin/otxurls /usr/local/bin/otxurls

export GOPATH=/opt/hakrawler
go get github.com/hakluke/hakrawler
ln -s /opt/hakrawler/bin/hakrawler /usr/local/bin/hakrawler

export GOPATH=/opt/qsreplace
go get -u github.com/tomnomnom/qsreplace
ln -s /opt/qsreplace/bin/qsreplace /usr/local/bin/qsreplace

#subjack
export GOPATH=/opt/subjack
go get github.com/haccer/subjack
ln -s /opt/subjack/bin/subjack /usr/local/bin/subjack

#gwdomains
export GOPATH=/opt/gwdomains
go get -u github.com/fuzzerk/gwdomains
ln -s /opt/gwdomains/bin/gwdomains /usr/local/bin/gwdomains

#tok
export GOPATH=/opt/tok
go get -u github.com/tomnomnom/hacks/tok
ln -s /opt/tok/bin/tok /usr/local/bin/tok

#fff
export GOPATH=/opt/fff
go get -u github.com/tomnomnom/hacks/fff
ln -s /opt/fff/bin/fff /usr/local/bin/fff

# HTTProbe
export GOPATH=/opt/httprobe
go get -u github.com/tomnomnom/httprobe
ln -s /opt/httprobe/bin/httprobe /usr/local/bin/httprobe

# FProbe
export GOPATH=/opt/fprobe
go get -u github.com/theblackturtle/fprobe
ln -s /opt/fprobe/bin/fprobe /usr/local/bin/fprobe

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

#Snp13r
git clone https://github.com/1N3/Sn1per.git /opt/Sn1p3r || git -C /opt/Sn1per pull
bash /opt/Sn1per/install.sh
