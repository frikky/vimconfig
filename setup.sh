#!/bin/bash 
# Check if sudo installed 

# Check if not root
echo "Installing necessary tools"
sudo apt install -y i3 suckless-tools vim-nox sudo chromium python-pip net-tools

printf "\nVerifying vmware"
verifyvmware=$(sudo dmidecode | grep -i vmware) 

if ! [ -z $verifyvmware ]; then
	sudo apt -y install open-vm-tools-desktop
else
	echo "vmware not present - not installing vmware tools" 
fi

printf "\nSetting up golang"
wget https://storage.googleapis.com/golang/go1.9.2.linux-amd64.tar.gz
sudo tar -xvf go1.9.2.linux-amd64.tar.gz
sudo mv go /usr/local

export GOROOT=/usr/local/go
export GOPATH=$HOME/work
export PATH=$GOPATH/bin:/$GOROOT/bin:$PATH

echo "Setting up i3 and vim environment."
python setup.py

print "Copying vim config"
mv .vim $HOME/.vim
print "Copying .vimrc config"
mv .vimrc $HOME/.vimrc

print "Copying i3 config"
mv .i3 $HOME/.i3
mv config /etc/i3/config

echo "Setting up pathogen for vim."
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "Setting up jedi-vim (python vim plugin)"
cd ~/.vim/bundle/ && git clone --recursive https://github.com/davidhalter/jedi-vim.git

echo "Setting up powershell highlights for .ps1 files"
cd ~/.vim/bundle && git clone https://github.com/PProvost/vim-ps1.git

printf "\n[!!!] Only some more steps. See README"
