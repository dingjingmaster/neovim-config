local map = vim.keymap.set
return {
  -- fzf
  {
    "junegunn/fzf.vim",
    event = "VeryLazy",
  },
  {
    "junegunn/fzf",
    build = 'call fzf#install',
    event = "VeryLazy",
  }
}
