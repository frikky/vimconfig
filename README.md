# Debian installer script
Before you start:
$ su -<br>
$ apt install -y sudo git<br>
ADD USER TO /etc/sudoers file!!

Requires root to configure.br>
$ ./setup.sh

configure terminal after setup:<br>
edit > preferences > Show menubar<br>
edit > profile preferences > colors > "Use colors from system theme" = Solarized Dark<br>
edit > profile preferences > colors > Palette = Solarized<br>
edit > profile preferences > scrollbar<br>

configure chromium for actual usage:<br>
Add lastpass<br>
Add vimium<br>

$ sudo reboot now<br>

Should now be good to go :)

## TODO
* Add user to sudoers file based on /etc/passwd
