import os
import sys
import shutil

#from shutil import copytree, copyfile, 

home = os.path.expanduser("~")

vim = home+"/.vim"

# Copies vim color config
print "Copying vim config"
if os.path.exists(vim):
    print "Replacing .vim folder."
    shutil.rmtree(vim)

shutil.copytree(".vim", home+"/.vim")

# Copies vimrc.
print "Copying .vimrc config"
vimrc = home+"/.vimrc"
if os.path.exists(vimrc):
    print "Replacing .vimrc file."
    os.remove(vimrc)

shutil.copyfile(".vimrc", home+"/.vimrc")

# Fixes i3
print "Copying i3 config"
i3 = home+"/.i3"
if os.path.exists(i3):
    print "Replacing .i3 folder."
    shutil.rmtree(i3)

shutil.copytree(".i3", home+"/.i3")

i3 = "/etc/i3/config"
try:
    if os.path.exists(i3):
        os.remove(i3)

    shutil.copyfile("config", "/etc/i3/config")

    print "Setup should be completed."
    print "git clone https://github.com/frikky/vimconfig\n\
        to get it back."

except OSError as e:
    print "!!!Missing permissions to edit /etc/i3.\
            \n!!!%s\n!!!Try sudo python setup.py" % e 
