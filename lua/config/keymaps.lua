local function map(mode, lhs, rhs, opts)
  opts = opts or {}
  opts.silent = opts.silent ~= true
  vim.keymap.set(mode, lhs, rhs, opts)
end

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- ---------- 插入模式 -----------
map("i", "jk", "<esc>", { desc = "ESC" })
map("i", "jj", "<esc>", { desc = "ESC" })

-- ---------- 视觉模式 -----------
--上下移动行
map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down"})
map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up"})
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down"})
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up"})
map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down"})
map("v", "<A-k>", ":m '<-2<cr>gv==gv", { desc = "Move up"})

-- ---------- 正常模式 -----------
-- 按键替换
map("n", "s", "<nop>")
map("n", ";", ":")
map("v", ";", ":")

-- 分屏幕窗口
map("n", "<leader>wd", "<c-w>c", { desc = "Delete window" })
map("n", "<leader>w-", "<c-w>s", { desc = "Split window below" })
map("n", "<leader>w|", "<c-w>v", { desc = "Split window right" })
map("n", "<leader>-", "<c-w>s", { desc = "Split window below" })
map("n", "<leader>|", "<c-w>v", { desc = "Split window right" })

-- 加载配置
map("n", "R", "<cmd>so<cr>")

-- 保存 退出
map({"n","i","v","s"}, "<c-s>", "<cmd>w<cr><esc>", {desc = "Save file"})
-- map("n", "<c-s>", ":w<cr>")
map("n", "Q", "<cmd>q<cr>")

-- 快速上下跳转
map({"n","i"}, "<c-j>", "5jzz")
map({"n","i"}, "<c-k>", "5kzz")

-- 快速上下跳转
map("n", "j", "gj" )
map("n", "k", "gk" )

-- 取消高亮
map({"i","n"}, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- 折叠
map("n", "--", "za", { desc = "fold"})
-- map("v", "-", "zf")

-- ---------- 其他通用 -----------
-- SHIFT + 方向 选择文本
map('i', '<s-up>', '<esc>vk')
map('i', '<s-down>', '<esc>vj')
map('n', '<s-up>', 'Vk')
map('n', '<s-down>', 'Vj')
map('v', '<s-up>', 'k')
map('v', '<s-down>', 'j')
map('n', '<s-left>', '<left>vh')
map('n', '<s-right>', 'vl')

-- tt 打开一个10行大小的终端
map('n', '<leader>wt', '<cmd>below 10sp | term<cr>a', { desc = "mini terminal"})

-- 缩进
map("n", ">", ">>")
map("n", "<", "<<")

-- 切换buffer | ctrl + h/l
map("n", "L", "<cmd>bnext<cr>")
map("n", "H", "<cmd>bprevious<cr>")

-- 新建一个文件
map('n', '<leader>fn', "<cmd>enew<cr>", { desc = "New file" })

-- =========== 插件 =============

-- ===lazy===
map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy"})

-- ===fzf===
map("n", "<c-p>", "<cmd>Files<cr>")
map('n', '<c-a>', '<cmd>Ag<cr>')
map('n', '<c-l>', '<cmd>BLines<cr>')
map('n', '<c-g>', '<cmd>GFiles?<cr>')
map('n', '<c-h>', '<cmd>History<cr>')

