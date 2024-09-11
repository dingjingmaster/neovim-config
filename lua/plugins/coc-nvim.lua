-- 语言配置说明：https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions
return {
    "neoclide/coc.nvim",
    build = "cd && yarn install",
    branch = "release",
    event = "VeryLazy",
    config = function()
        local G = require('G')
        G.opt.backup = false                    -- 启用会有错误
        G.opt.writebackup = false               -- 启用会出错
        G.opt.updatetime = 300
        G.opt.signcolumn = 'yes'                --

        G.api.nvim_create_augroup('CocGroup', {})
        G.api.nvim_create_autocmd('CursorHold', {
            group = 'CocGroup',
            command = "silent call CocActionAsync('highlight')",
            desc = 'Highlight symbol under cursor on CursorHold'
        })

        -- Autocomplete
        function _G.check_back_space()
            local col = G.fn.col('.') - 1
            return col == 0 or G.fn.getline('.'):sub(col, col):match('%s') ~= nil
        end

        G.g.coc_global_extensions = {
            'coc-marketplace',            -- 重要，用于安装其它coc语言支持插件
            'coc-json',                   -- json 
            'coc-clangd',                 -- C/C++
            'coc-css',                    -- CSS
            'coc-docker',                 -- docker
            'coc-go',                     -- go
            'coc-cmake',                  -- cmake
            'coc-sql',                    -- sql
            'coc-rust-analyzer',          -- rust
            'coc-python',                 -- python
            'coc-perl',                   -- prel
            'coc-sumneko-lua',            -- lua
            'coc-sh',                     -- bash
            'coc-xml',                    -- XML
            'coc-toml',                   -- toml
            'coc-translator',             -- 语言事务
            'coc-yank',                   -- yank
            'coc-syntax',
            'coc-vimlsp',
            'coc-tsserver',
        }
        G.cmd("command! -nargs=? Fold :call CocAction('fold', <f-args>)")
        G.cmd("hi! link CocPum Pmenu")
        G.cmd("hi! link CocMenuSel PmenuSel")

        --
        -- { mode, lhs, rhs, opts }
        -- mode: n(普通模式)、i(插入模式)、v(视觉模式)、x(选择模式)、t(终端模式)
        -- lhs: 左侧按键组合(要映射的按键组合)
        -- rhs: 右侧命令(按下左侧按键要执行的命令)
        -- opts: 可选参数
        --
        G.map({
            { 'n', '<C-t>', '<C-o>',                                 { silent = true } },           -- 回退
            { 'n', '<C-]>', '<Plug>(coc-definition)',                { silent = true } },
            { 'n', '<C-]>', '<Plug>(coc-type-definition)',           { silent = true } },
            { 'n', '<C-i>', '<Plug>(coc-implementation)',            { silent = true } },
            { 'n', '<C-r>', '<Plug>(coc-references)',                { silent = true } },
            { 'n', 'K',     ':call CocAction("doHover")<cr>',        { silent = true } },
            { 'i', '<TAB>', "coc#pum#visible() ? coc#pum#next(1) : col('.') == 1 || getline('.')[col('.') - 2] =~# '\\s' ? \"\\<TAB>\" : coc#refresh()", { silent = true, noremap = true, expr = true } },
            { 'i', '<s-tab>', "coc#pum#visible() ? coc#pum#prev(1) : \"\\<s-tab>\"", { silent = true, noremap = true, expr = true } },
            { 'i', '<cr>', "coc#pum#visible() ? coc#pum#confirm() : \"\\<c-g>u\\<cr>\\<c-r>=coc#on_enter()\\<cr>\"", { silent = true, noremap = true, expr = true } },
            { 'i', '<c-y>', "coc#pum#visible() ? coc#pum#confirm() : '<c-y>'", { silent = true, noremap = true, expr = true } },
            { 'n', '<c-e>', ":CocList --auto-preview diagnostics<cr>", { silent = true } },
            { 'n', 'mm',    "<Plug>(coc-translator-p)",                { silent = true } },
            { 'v', 'mm',    "<Plug>(coc-translator-pv)",               { silent = true } },
        })
    end,
}
