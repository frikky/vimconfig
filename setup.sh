#!/bin/bash 
# Check if sudo installed 

# Check if not root
echo "Installing necessary tools"
sudo apt update -y
sudo apt install -y i3 suckless-tools vim-nox sudo chromium python3-pip net-tools apt-transport-https ca-certificates curl software-properties-common

printf "\nVerifying vmware"
verifyvmware=$(sudo dmidecode | grep -i vmware) 

if ! [ -z $verifyvmware ]; then
	sudo apt -y install open-vm-tools-desktop
else
	echo "vmware not present - not installing vmware tools" 
fi

printf "\nSetting up golang"
wget https://storage.googleapis.com/golang/go1.20.5.linux-amd64.tar.gz
sudo tar -xvf go1.20.5.linux-amd64.tar.gz
rm go1.20.5.linux-amd64.tar.gz
sudo mv go /usr/local
sudo ln -s /usr/local/go/bin/go /usr/bin/go

export GOROOT=/usr/local/go
export GOPATH=$HOME/work
export PATH=$GOPATH/bin:/$GOROOT/bin:$PATH

print "Copying vim config"
cp -r .vim $HOME/.vim
print "Copying .vimrc config"
cp -r .vimrc $HOME/.vimrc

print "Copying i3 config"
sudo cp -r .i3 $HOME/.i3
sudo cp .i3/config /etc/i3/config

print "Copying X config"
sudo cp .Xresources $HOME/.Xresources

echo "Setting up pathogen for vim."
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "Setting up jedi-vim for python"
cd ~/.vim/bundle/ && git clone --recursive https://github.com/davidhalter/jedi-vim.git

echo "Setting up powershell highlights for .ps1 files"
cd ~/.vim/bundle && git clone https://github.com/PProvost/vim-ps1.git

echo "Setting up go highlights for .go files"
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go

echo "Setting up docker"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce

echo "Downloading docker-compose version 1.18.0 - Might be deprecated"
sudo curl -L "https://github.com/docker/compose/releases/download/2.19.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo "Installing node and npm"
curl -sL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install build-essential nodejs

echo "Installing python3.10"
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget
curl -O https://www.python.org/ftp/python/3.10.3/Python-3.10.3.tar.xz
tar -xf Python-3.10.3.tar.xz
cd Python-3.10.3
./configure --enable-optimizations
make -j 8
sudo make altinstall
cd ..

echo "Fixing npm stuff"
wget https://nodejs.org/dist/v20.3.1/node-v20.3.1-linux-x64.tar.xz
tar xvf node-v20.3.1-linux-x64
sudo mv node-v20.3.1-linux-x64 /usr/local/node
sudo ln -s /usr/local/node/bin/* /usr/bin/

# Hello "hidden" directory :^)
if [ "$whoami"="frikky" ]; then
	echo "Setting up datasploit"
	# Hidden directory :D
	git clone https://github.com/DataSploit/datasploit
	echo "\nPlease provide github credentials."
	git clone https://github.com/frikky/config_keys
	cp config_keys/config.py datasploit/config.py
	rm -rf config_keys
	pip install --upgrade --force-reinstall -r datasploit/requirements.txt
	mkdir ~/git
	mv datasploit ~/git/datasploit
fi

printf "\n\n[!!!] Only some more steps. See README for some manual config\nURL: https://github.com/frikky/vimconfig\n"
