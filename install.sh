#!/bin/bash

set -e

CUR_DIR=$(dirname $(realpath -- $0))
NVIM_DIR="/home/$(whoami)/.config/nvim"
NVIM_BACKUP_DIR="$NVIM_DIR/backup"

[[ -d $NVIM_BACKUP_DIR ]] && rm -rf $NVIM_BACKUP_DIR
[[ ! -d $NVIM_BACKUP_DIR ]] && mkdir -p $NVIM_BACKUP_DIR
[[ ! -f /etc/profile.d/neovim.sh ]] && sudo cp -f $CUR_DIR/profile.d/neovim.sh /etc/profile.d/

[[ -d $NVIM_DIR/lua ]] && mv $NVIM_DIR/lua $NVIM_BACKUP_DIR/
[[ -d $NVIM_DIR/colors ]] && mv $NVIM_DIR/colors $NVIM_BACKUP_DIR/
[[ -d $NVIM_DIR/syntax ]] && mv $NVIM_DIR/syntax $NVIM_BACKUP_DIR/
[[ -f $NVIM_DIR/init.lua ]] && mv $NVIM_DIR/init.lua $NVIM_BACKUP_DIR/

cp -r $CUR_DIR/lua                 $NVIM_DIR
mv $NVIM_DIR/lua/init.lua      	   $NVIM_DIR/init.lua

