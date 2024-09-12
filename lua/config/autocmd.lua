-- 取消换行注释
-- 用o换行不注释
local G = require('G')
G.api.nvim_create_autocmd({ "BufEnter" }, {
    pattern = { "*" },
    callback = function()
        -- vim.opt.formatoptions = vim.opt.formatoptions - { "c", "r", "o" }
        G.opt.formatoptions = G.opt.formatoptions
            - "o" -- O and o, don't continue comments
            + "r" -- But do continue when pressing enter.
    end,
})

--vim.api.nvim_create_autocmd({ "BufEnter" }, {
--    pattern = {"*"},
--    command = ""
--})

-- resize splits if window got resized
--G.api.nvim_create_autocmd({ "VimResized" }, {
--    group = augroup("resize_splits"),
--    callback = function()
--        local current_tab = G.fn.tabpagenr()
--        G.cmd("tabdo wincmd =")
--        G.cmd("tabnext " .. current_tab)
--    end,
--})
