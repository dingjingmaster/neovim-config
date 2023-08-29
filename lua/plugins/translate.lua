local map = vim.keymap.set
return {
  -- 翻译
  "uga-rosa/translate.nvim",
  event = "VeryLazy",
  config = function()
    require("translate").setup({
      default = {
        command = "google",
        output = "floating",
        parse_before = "trim",
      },
      replace_symbols = {
        google = {},
        deepl_pro = {},
        deepl_free = {},
        translate_shell = {}
      },
    })

    map({ 'n', 'v' }, '<leader>tcr', "<cmd>Translate ZH -source=EN -output=replace<cr>",
      { silent = true, desc = "Translate replace English" }) -- 翻译替换英文
    map({ 'n', 'v' }, '<leader>tcf', "<cmd>Translate ZH -source=EN -output=floating<cr>",
      { silent = true, desc = "Translate open in float window" }) -- 翻译在浮动窗口中打开
    map({ 'n', 'v' }, '<leader>tci', "<cmd>Translate ZH -source=EN -output=insert<cr>",
      { silent = true, desc = "Translate insert to next line" }) -- 翻译插入到下一行
    map({ 'n', 'v' }, '<leader>tcc', "<cmd>Translate ZH -source=EN -output=register<cr>",
      { silent = true, desc = "Translate copy result to clipboard" }) -- 翻译复制结果到剪贴板
    map({ 'n', 'v' }, '<leader>tcb', "<cmd>Translate ZH -source=EN -output=floating -comment<cr>",
      { silent = true, desc = "Translate comment open in float window" }) -- 翻译评论在浮动窗口中打开
    map({ 'n', 'v' }, '<leader>tcw', "<cmd>:normal! m'viw<cr>:Translate ZH -source=EN -output=floating<cr>`'",
      { silent = true, desc = "Translate word open in float window" })  -- 翻译单词浮动窗口中打开

    map({ 'n', 'v' }, '<leader>ter', "<cmd>Translate EN -source=ZH -output=replace<cr>",
      { silent = true, desc = "Translate replace Chinese" }) -- 翻译替换英文
    map({ 'n', 'v' }, '<leader>tef', "<cmd>Translate EN -source=ZH -output=floating<cr>",
      { silent = true, desc = "Translate open in float window" }) -- 翻译在浮动窗口中打开
    map({ 'n', 'v' }, '<leader>tei', "<cmd>Translate EN -source=ZH -output=insert<cr>",
      { silent = true, desc = "Translate insert to next line" }) -- 翻译插入到下一行
    map({ 'n', 'v' }, '<leader>tec', "<cmd>Translate EN -source=ZH -output=register<cr>",
      { silent = true, desc = "Translate copy result to clipboard" }) -- 翻译复制结果到剪贴板
    map({ 'n', 'v' }, '<leader>teb', "<cmd>Translate EN -source=ZH -output=floating -comment<cr>",
      { silent = true, desc = "Translate comment open in float window" }) -- 翻译评论在浮动窗口中打开
    map({ 'n', 'v' }, '<leader>tew', "<cmd>:normal! m'viw<cr>:Translate ZH -source=EN -output=floating<cr>`'",
      { silent = true, desc = "Translate word open in float window" })  -- 翻译单词浮动窗口中打开
  end,
}
