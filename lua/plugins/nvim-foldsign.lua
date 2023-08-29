return {
  -- NOTE: 折叠ui
  "yaocccc/nvim-foldsign",
  event = "CursorHold",
  config = function()
    require("nvim-foldsign").setup({
      offset = -2,
      foldsigns = {
        -- 󱘹󱇬󰁙
        close = "󱇬",
        open = "󱘹",
        seps = { "", "" },
      },
    })
  end,
}
