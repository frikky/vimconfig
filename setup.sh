#!/bin/bash

# Check if sudo installed 

# Check if not root
if ! [ $(whoami) == "root" ]; then
	printf "sudo is required to run. Do the following:\n$ su \n$ apt install sudo\n"
	user="frikky"
	echo "$ $user ALL=(ALL:ALL) ALL >> /etc/sudoers"
	exit
fi

echo "Installing necessary tools"
sudo apt install i3 suckless-tools vim-nox sudo chromium python-pip

printf "\nVerifying vmware"
verifyvmware=$(sudo dmidecode | grep -i vmware) 

if ! [ -z $verifyvmware ]; then
	apt install open-vm-tools-desktop
else
	echo "vmware not present - not installing vmware tools" 
fi

echo "Setting up i3 and vim environment."
sudo python setup.py

echo "Setting up pathogen for vim."
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "Setting up jedi-vim (python vim plugin)"
cd ~/.vim/bundle/ && git clone --recursive https://github.com/davidhalter/jedi-vim.git

printf "\n[!!!] Only some more steps. See README"
