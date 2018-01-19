#!/bin/sh
# Used for mounting vmware folders
sudo mount -t vmhgfs .host/ /mnt/hgfs
echo "Folders ready in /mnt/hgfs. Errors might occur."
