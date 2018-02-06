#!/bin/sh

# Disk 
sudo apt install -y ewf-tools afflib-tools sleuthkit plaso

# Memory
git clone https://github.com/volatilityfoundation/volatility.git
cd volatility
python setup.py install
pip install distorm3
