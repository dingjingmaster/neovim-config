#!/bin/bash

VIM=/usr/share/nvim
VIM_CONFIG=$VIM/sysinit.vim

[[ -f ${VIM_CONFIG} ]] && [[ $(echo $PATH | grep "${VIM_CONFIG}" | wc -c) -eq 0 ]] && export PATH=$PATH:$VIM_CONFIG
