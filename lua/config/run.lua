vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.api.nvim_buf_set_keymap(
      0, "n", "<F5>",
      ":w<cr>:split<cr>:resize -3<cr>:te time /bin/python3 %<cr>i",
      { silent = true, noremap = true }
    )
  end
})
