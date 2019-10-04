# Gobuster
apt-get install -y gobuster

# Nmap
apt-get install -y nmap

# Amass
apt-get install -y amass

# MassDNS
apt-get install -y gcc make libpcap-dev
git clone https://github.com/blechschmidt/massdns.git /opt/massdns || git -C /opt/massdns pull
cd /opt/massdns
make
ln -s /opt/massdns/bin/massdns /usr/local/bin/massdns

# Masscan
apt-get install -y gcc make libpcap-dev
git clone https://github.com/robertdavidgraham/masscan /opt/masscan || git -C /opt/masscan pull
cd /opt/masscan
make
ln -s /opt/masscan/bin/masscan /usr/local/bin/masscan

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

# Brutespray
git clone https://github.com/x90skysn3k/brutespray.git /opt/brutespray || git -C /opt/brutespray pull
pip3 install -r /opt/brutespray/requirements.txt
ln -s /opt/brutespray/brutespray.py /usr/local/bin/brutespray
chmod +x /usr/local/bin/brutespray

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
