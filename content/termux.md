Title:Termux配置
Date:2020-10-04
Category:Linux

## Termux额外按键

`vim .termux/termux.properties`

```
extra-keys = [['ESC','/','-','HOME','UP','END','PGUP'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN']]
```

## Zsh
```
pkg install zsh
git clone https://gitee.com/idkzr/termux-ohmyzsh
./termux-ohmyzsh/tool/install.sh
```
### zshrc
```
alias e=exit                             alias nxcf="vim ../usr/etc/nginx/nginx.conf"
```

## Vim
### 插件
