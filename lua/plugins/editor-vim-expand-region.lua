return {
  -- vv 快速选中内容插件
  "terryma/vim-expand-region",
  event = "VeryLazy",
  config = function()
    local G = require("G")
    G.map({
      { 'v', 'v', '<Plug>(expand_region_expand)', { silent = true } },
      { 'v', 'V', '<Plug>(expand_region_shrink)', { silent = true } },

    })
  end
}
