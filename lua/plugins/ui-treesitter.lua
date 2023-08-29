local G = require("G")
local z = {
  red = "#e95678",
  redwine = "#d16d9e", -- 酒红
  orange = "#d78700",
  dark_orange = "#d75f00", -- 深橙
  lignt_orange = "#d7af5f", -- 浅橘
  green = "#afd700",
  lignt_green = "#afd787", -- 暗绿
  dark_green = "#98be65", -- 深绿
  yellow = "#f7bb3b",
  cyan = "#00afaf", -- 青
  blue = "#0087d7", -- 深天蓝
  violet = "#CBA6F7", -- 蓝紫
  magenta = "#c678dd", -- 紫红
  teal = "#1abc9c", --蓝绿
  grey = "#928374", --  灰
  brown = "#c78665", -- 棕 咖啡
  black = "#000000", -- 黑
  bracket = "#80A0C2",
  none = "NONE",
}
local plugin_syntax = {
  ["@variable"] = { fg = z.none }, -- 变量
  ["@variable.builtin"] = { fg = z.none }, --  内置变量 self
  ["@function"] = { fg = z.blue }, -- 函数名称
  ["@function.call"] = { fg = z.blue }, -- 函数使用
  ["@function.builtin"] = { fg = z.dark_orange }, -- 内置函数 range
  ["@operator"] = { fg = z.dark_orange }, -- 符号+-=...
  ["@keyword.operator"] = { fg = z.dark_orange }, -- 符号+-=...
  ["@property"] = { fg = z.yellow }, -- 属性
  ["@field"] = { fg = z.lignt_green }, -- self.n 的n
  ["@method"] = { fg = z.dark_orange }, -- 方法
  ["@method.call"] = { fg = z.red }, -- 方法使用
  ["@parameter"] = { fg = z.red }, -- 参数
  ["@keyword"] = { fg = z.red }, -- 类的关键字 class
  ["@keyword.function"] = { fg = z.blue }, -- 函数的关键字 def
  ["@exception"] = { fg = z.blue }, -- #0087d7
  ["@statement"] = { fg = z.dark_orange }, -- 说明
  ["@special"] = { fg = z.orange }, -- 矩阵
  ["@include"] = { fg = z.orange }, -- from ... import
  ["@type"] = { fg = z.lignt_orange }, -- 类名称
  ["@type.builtin"] = { fg = "#afd787" }, -- 类使用 没效果
  ["@punctuation.bracket"] = { fg = z.bracket }, -- 括号
  ["@constructor"] = { fg = z.orange }, -- 魔术方法,构建函数
  ["@namespace"] = { fg = z.orange }, --命名空间
  ["@string"] = { fg = z.cyan }, -- 字符 ""
  ["@number"] = { fg = z.cyan }, -- 数字 1 2 3
  ["@boolean"] = { fg = z.cyan }, -- 布偶值 True False
  ["@tag"] = { fg = z.orange }, -- 标签
  ["@conditional"] = { fg = z.dark_orange }, -- if
  ["@repeat"] = { fg = z.dark_orange }, -- for
}
local set_hl = function(tbl)
  for group, conf in pairs(tbl) do
    vim.api.nvim_set_hl(0, group, conf)
  end
end
function z.colorscheme()
  set_hl(plugin_syntax)
end

z.colorscheme()
return {
  -- 高亮语法插件
  "nvim-treesitter/nvim-treesitter",
  -- run = ':TSUpdate',
  event = "VeryLazy",
  config = function()
    require("nvim-treesitter.configs").setup({
      --  添加不同语言
      ensure_installed = { "vim", "bash", "c", "cpp", "typescript", "javascript", "lua", "python", "go", "query", "markdown" },
      -- sync_install = true,
      highlight = { enable = true },
      -- indent 模块 用 = 可以代码格式化 全文格式化(ggvG=)
      -- indent = { enable = true },
      -- 不同括号颜色区分
      rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
      },
      playground = {
        enable = true,
        disable = {},
        updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
        persist_queries = false, -- Whether the query persists across vim sessions
        keybindings = {
          toggle_query_editor = 'o', -- 当获得焦点时切换查询编辑器
          toggle_hl_groups = 'i', -- 切换高亮组的可见性
          toggle_injected_languages = 't', -- 切换注入语言的可见性
          toggle_anonymous_nodes = 'a', -- 切换匿名节点的可见性。
          toggle_language_display = 'I', -- 切换节点所属语言的可见性。
          focus_language = 'f', -- 聚焦中光标下的语言树。查询编辑器现在将使用焦点语言.
          unfocus_language = 'F', -- 取消聚焦当前聚焦的语言。
          update = 'R', -- 在获得焦点时刷新 playground 视图，或在查询编辑器获得焦点时重新加载查询。
          goto_node = '<cr>', -- 转到代码缓冲区中的当前节点
          show_help = '?',
        },
      },
      z
    })
  end,
  G.map({
    { 'n', '<leader>uth', "<cmd>TSBufToggle highlight<cr>",          { noremap = true, silent = true } },
    { 'n', '<leader>utc', "<cmd>TSHighlightCapturesUnderCursor<cr>", { noremap = true, silent = true } },
    { 'n', '<leader>utu', "<cmd>TSNodeUnderCursor<cr>",              { noremap = true, silent = true } },
    { 'n', '<leader>utp', "<cmd>TSPlaygroundToggle<cr>",             { noremap = true, silent = true } },
  }),
}
