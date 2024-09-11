-- 语言配置说明：https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions
return {
    "neoclide/coc.nvim",
    build = "cd && yarn install",
    branch = "release",
    event = "VeryLazy",
    config = function()
        local G = require('G')
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
--    G.cmd("command! -nargs=? Fold :call CocAction('fold', <f-args>)")
---    G.cmd("hi! link CocPum Pmenu")
--    G.cmd("hi! link CocMenuSel PmenuSel")
--    G.map({
--      { 'n', '<c-y>', ':CocList -A --normal yank<cr>',         { silent = true } },
--      { 'n', '<F2>',  '<Plug>(coc-rename)',                    { silent = true } },
--      { 'n', 'gd',    '<Plug>(coc-definition)',                { silent = true } },
--      { 'n', 'gy',    '<Plug>(coc-type-definition)',           { silent = true } },
--      { 'n', 'gi',    '<Plug>(coc-implementation)',            { silent = true } },
--      { 'n', 'gr',    '<Plug>(coc-references)',                { silent = true } },
--      { 'x', 'if',    '<Plug>(coc-funcobj-i)',                 { silent = true } },
--      { 'o', 'if',    '<Plug>(coc-funcobj-i)',                 { silent = true } },
--      { 'x', 'af',    '<Plug>(coc-funcobj-a)',                 { silent = true } },
--      { 'o', 'af',    '<Plug>(coc-funcobj-a)',                 { silent = true } },
--      { 'x', 'ic',    '<Plug>(coc-classobj-i)',                { silent = true } },
--      { 'o', 'ic',    '<Plug>(coc-classobj-i)',                { silent = true } },
--      { 'x', 'ac',    '<Plug>(coc-classobj-a)',                { silent = true } },
--      { 'o', 'ac',    '<Plug>(coc-classobj-a)',                { silent = true } },
--      { 'n', 'K',     ':call CocAction("doHover")<cr>',        { silent = true } },
--      { 'i', '<c-f>', "coc#pum#visible() ? '<c-y>' : '<c-f>'", { silent = true, expr = true } },
--      { 'i', '<TAB>',
--        "coc#pum#visible() ? coc#pum#next(1) : col('.') == 1 || getline('.')[col('.') - 2] =~# '\\s' ? \"\\<TAB>\" : coc#refresh()",
--        { silent = true, noremap = true, expr = true } },
--      { 'i', '<s-tab>', "coc#pum#visible() ? coc#pum#prev(1) : \"\\<s-tab>\"",
--        { silent = true, noremap = true, expr = true } },
--      { 'i', '<cr>', "coc#pum#visible() ? coc#pum#confirm() : \"\\<c-g>u\\<cr>\\<c-r>=coc#on_enter()\\<cr>\"",
--        { silent = true, noremap = true, expr = true } },
--      { 'i', '<c-y>', "coc#pum#visible() ? coc#pum#confirm() : '<c-y>'",
--        { silent = true, noremap = true, expr = true } },
--      { 'n', '<F3>',  ":silent CocRestart<cr>",                  { silent = true, noremap = true } },
--      { 'n', '<F4>', "get(g:, 'coc_enabled', 0) == 1 ? ':CocDisable<cr>' : ':CocEnable<cr>'",
--        { silent = true, noremap = true, expr = true } },
--      { 'n', '<F9>',  ":CocCommand snippets.editSnippets<cr>",   { silent = true, noremap = true } },
--      { 'n', '<c-e>', ":CocList --auto-preview diagnostics<cr>", { silent = true } },
--      { 'n', 'mm',    "<Plug>(coc-translator-p)",                { silent = true } },
--      { 'v', 'mm',    "<Plug>(coc-translator-pv)",               { silent = true } },
--      { 'n', '(',     "<Plug>(coc-git-prevchunk)",               { silent = true } },
--      { 'n', ')',     "<Plug>(coc-git-nextchunk)",               { silent = true } },
--      { 'n', 'C',
--        "get(b:, 'coc_git_blame', '') ==# 'Not committed yet' ? \"<Plug>(coc-git-chunkinfo)\" : \"<Plug>(coc-git-commit)\"",
--        { silent = true, expr = true } },
--      { 'n', '\\g',
--        ":call coc#config('git.addGBlameToVirtualText',  !get(g:coc_user_config, 'git.addGBlameToVirtualText', 0)) | call nvim_buf_clear_namespace(bufnr(), -1, line('.') - 1, line('.'))<cr>",
--        { silent = true } },
--      { 'x', '=', 'CocHasProvider("formatRange") ? "<Plug>(coc-format-selected)" : "="',
--        { silent = true, noremap = true, expr = true } },
--      { 'n', '=', 'CocHasProvider("formatRange") ? "<Plug>(coc-format-selected)" : "="',
--        { silent = true, noremap = true, expr = true } },
--    })
    end,
}
