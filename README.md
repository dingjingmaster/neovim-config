# neovim 配置

## neovim 安装

archlinux
```
pacman -S neovim
```

ubuntu
```
apt install neovim
```

centos
```
yum install neovim
```

## 环境变量配置

- 全局生效
```
# 打开 /etc/profile 输入
export VIM=/usr/share/nvim
export PATH="${PATH}:${VIM}/sysinit.vim"
```
