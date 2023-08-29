return {
  -- ff 高亮 word
  "lfv89/vim-interestingwords",
  event = 'VeryLazy',
  config = function()
    local G = require('G')
    G.g.interestingWordsRandomiseColors = 1
    G.map({
      { 'n', 'ff', "<cmd>call InterestingWords('n')<cr>",      { silent = true, noremap = true } },
      { 'n', 'FF', "<cmd>call UncolorAllWords()<cr>",          { silent = true, noremap = true } },
      { 'n', 'n',  "<cmd>call WordNavigation('forward')<cr>",  { silent = true, noremap = true } },
      { 'n', 'N',  "<cmd>call WordNavigation('backward')<cr>", { silent = true, noremap = true } },
    })
  end
}
