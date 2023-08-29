local G = require("G")

-- 设置命令提示 唯一标识 共享剪贴板
G.opt.showcmd = true
G.opt.encoding = 'utf-8'
G.opt.wildmenu = true
G.opt.pumheight = 10
G.opt.conceallevel = 0
G.opt.clipboard = 'unnamed,unnamedplus'

-- 设置python3对应的目录，你可以手动 export PYTHON=$(which python3) 到你的终端配置中
G.g.python3_host_prog = os.getenv('PYTHON')

-- 搜索高亮 空格+回车 去除匹配高亮 延迟
G.opt.hlsearch = true
G.opt.showmatch = true
G.opt.incsearch = true
G.opt.inccommand = ''
G.opt.ignorecase = true
G.opt.smartcase = true
G.opt.timeoutlen = 400

-- 设置正常删除 光标穿越行
G.opt.backspace = 'indent,eol,start'
G.opt.whichwrap = 'b,s,<,>,h,'

-- 鼠标启用
G.opt.mouse = 'a'

-- 错误无提示音 去除屏幕闪烁
G.opt.vb = true
G.opt.hidden = true

-- 缩进对齐
G.opt.cindent = true        -- 针对C语言自动缩进
G.opt.autoindent = true     -- 自动缩进
G.opt.smartindent = true    -- 智能缩进
G.opt.tabstop = 2           -- 设置tab为2个空格,默认是8个空格
G.opt.softtabstop = 4       -- 编辑模式按退格键的长度
G.opt.shiftwidth = 4        -- 每一级缩进是4个空格
G.opt.smarttab = true       -- 根据文件其他地方缩进空格个数确定tab的空格数
G.opt.expandtab = true      -- 设置tab为空格

-- 不自动备份 不换行
G.opt.backup = false        -- 不自动备份
G.opt.swapfile = false      -- 不生成缓存文件
G.opt.wrap = false          -- 不自动换行

-- vim保存1000条文件记录
G.opt.viminfo = "!,'10000,<50,s10,h"

-- 折叠
--[zc关闭折叠 zo打开折叠 za打开/关闭折叠互相替换]
G.opt.foldenable = true
G.opt.foldmethod = 'indent'     -- indent 按段落缩进 | manual 手动缩进
G.opt.foldlevelstart = 99
G.opt.viewdir = os.getenv('HOME') .. '/.config/nvim/cache//viewdir'


-- 默认新窗口右和下
G.opt.splitright = true
G.opt.splitbelow = true

--光标回到上次编辑位置
G.cmd([[ au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif ]])

-- show
G.opt.updatetime = 300
G.opt.shortmess = 'filnxtToOScI'
G.cmd([[
    let &t_SI.="\e[5 q"
    let &t_EI.="\e[1 q"
    let &t_vb = ''
    let &t_ut = ''
    set list
    set listchars=tab:\|\ ,trail:▫
]])

-- 行号 行宽
G.opt.number = true
G.opt.numberwidth = 2

-- 光标行
G.opt.cursorline = true

-- 外观 真颜色 左边多一列
G.opt.signcolumn = 'yes'

-- 开启透明度
-- G.cmd([[
--     autocmd ColorScheme * highlight Normal guibg=NONE ctermbg=NONE
-- ]])

