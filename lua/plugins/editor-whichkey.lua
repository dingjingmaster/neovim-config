return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    plugins = { spelling = true },
  },
  config = function(_, opts)
    local wk = require('which-key')
    wk.setup(opts)
    local keymaps = {
      mode = {"n", "v"},
      ["<leader>w"] = { name = '+windows'},
      ["<leader>f"] = { name = '+file/find'},
      ["<leader>t"] = { name = '+Translate'},
      ["<leader>tc"] = { name = '+Chinese'},
      ["<leader>te"] = { name = '+English'},
      ["<leader>g"] = { name = '+git'},
      ["<leader>gh"] = { name = '+hunks'},
      ["<leader>u"] = { name = '+ui'},
      ["<leader>ut"] = { name = '+treesitter'},
    }
    wk.register(keymaps)
  end,
}
