# Debian installer script
Made for automation whenever I set up a new environment.

## Before you start
```bash
$ su -<br>
$ apt install -y sudo git<br>
```
ADD USER TO /etc/sudoers file!!

Requires sudo<br>
```bash
$ ./setup.sh
```

## POST SCRIPT - configure terminal after setup
edit > preferences > Show menubar<br>
edit > profile preferences > colors > "Use colors from system theme" = Solarized Dark<br>
edit > profile preferences > colors > Palette = Solarized<br>
edit > profile preferences > scrollbar<br>

### Configure chromium
Add lastpass<br>
Add vimium<br>

```bash
$ sudo reboot now<br>
```

## TODO
* Add user to sudoers file based on /etc/passwd
