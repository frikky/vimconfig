# Debian installer script
Made for automation whenever I set up a new debian environment (Happens a lot..)

## Before you start
```bash
$ su - 						
$ apt install -y sudo git	
```
**ADD USER TO /etc/sudoers file!!**

```bash
$ ./setup.sh
```

## POST SCRIPT - configure terminal after setup
edit > preferences > Show menubar<br>
edit > profile preferences > colors > "Use colors from system theme" = Solarized Dark<br>
edit > profile preferences > colors > Palette = Solarized<br>
edit > profile preferences > scrollbar<br>
edit > profile preferences > text > Custom font > Monospace 17~<br>

### Configure chromium
Add lastpass<br>
Add vimium<br>

```bash
$ sudo reboot now
```
