-- 取消换行注释
-- 用o换行不注释
vim.api.nvim_create_autocmd({ "BufEnter" }, {
    pattern = { "*" },
    callback = function()
        -- vim.opt.formatoptions = vim.opt.formatoptions - { "c", "r", "o" }
        vim.opt.formatoptions = vim.opt.formatoptions
            - "o" -- O and o, don't continue comments
            + "r" -- But do continue when pressing enter.
    end,
})

--vim.api.nvim_create_autocmd({ "BufEnter" }, {
--    pattern = {"*"},
--    command = ""
--})

-- resize splits if window got resized
--vim.api.nvim_create_autocmd({ "VimResized" }, {
--group = augroup("resize_splits"),
--  callback = function()
--    local current_tab = vim.fn.tabpagenr()
--    vim.cmd("tabdo wincmd =")
--    vim.cmd("tabnext " .. current_tab)
--  end,
--})
