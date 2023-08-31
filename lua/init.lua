--[[
 此脚本用来导入其它 *.lua 配置文件
   - colorscheme.lua   配置主题
   - keymaps.lua       配置按键映射
   - lsp.lua 配置      LSP
   - options.lua       配置选项
   - plugins.lua       配置插件
--]]
require('config.lazy')
require('config.neovide')
require('config.autocmd')
require('config.keymaps')
require('config.options')

require('config.ctags')

