return {
  "rcarriga/nvim-notify",
  keys = {
    {
      "<leader>un",
      function()
        require("notify").dismiss({ silent = true, pending = true })
      end,
      desc = "Dismiss all Notifications",
    },
  },
  opts = {
    level = 5,
    stages = "fade_in_slide_out",
    timeout = 2000,
    max_height = function()
      return math.floor(vim.o.lines * 0.75)
    end,
    max_width = function()
      return math.floor(vim.o.columns * 0.75)
    end,
  },
  init = function()
    -- when noice is not enabled, install notify on VeryLazy
    --local Util = require("lazyvim.util")
    --if not Util.has("noice.nvim") then
    --  Util.on_very_lazy(function()
    --    vim.notify = require("notify")
    --  end)
    --end
  end,
}
