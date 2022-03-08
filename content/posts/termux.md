---
title: "安装Termux后要做的"
date: 2022-03-02
tags: ["termux"]
categories: ["linux"]
weiget: 1
---
键盘方案
```shell
extra-keys = [ \
 ['ESC','/','[',']','UP','=','PGUP','{'], \                                            ['TAB','CTRL','|','LEFT','DOWN','RIGHT','PGDN','}'] \
]
```

zsh
```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

国内源
```bash
sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/termux-packages-24 stable main@' $PREFIX/etc/apt/sources.list
sed -i 's@^\(deb.*games stable\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/game-packages-24 games stable@' $PREFIX/etc/apt/sources.list.d/game.list
sed -i 's@^\(deb.*science stable\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/science-packages-24 science stable@' $PREFIX/etc/apt/sources.list.d/science.list
apt update && apt upgrade
```

安装虚拟机
```bash
# ubuntu
pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh && bash ubuntu.sh

# kali Linux
pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Kali/kali.sh && bash kali.sh

# 安装xfce4桌面
wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/DesktopEnvironment/Apt/Xfce4/de-apt-xfce4.sh && bash de-apt-xfce4.sh

# 安装lxde桌面
wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/DesktopEnvironment/Apt/LXDE/de-apt-lxde.sh && bash de-apt-lxde.sh

```

expect登录脚本
```bash
#!/usr/bin/expect
spawn ssh root@127.0.0.1
expect "*password:"
send "[passwd]\r"
interact
```

