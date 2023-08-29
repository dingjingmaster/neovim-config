return {
  -- 快速包裹"'({
  -- 选中文本后
  -- ds":删除包裹的"
  -- ys":用"包裹当前词
  -- cs"{:用{}替换掉""
  "yaocccc/vim-surround",
  -- event = "BufRead",
  event = "VeryLazy",
  config = function()
    local G = require('G')
    G.g.use_toggle_surround = 0
  end,
}
