return {
  -- 多光标插件
  "mg979/vim-visual-multi",
  event = 'VeryLazy',
  confgi = function()
    local G = require('G')
    G.g.VM_theme = 'ocean'
    G.g.VM_highlight_matches = 'underline'
    G.g.VM_maps = {
      ['Find Under'] = '<C-n>', -- 查找下一个
      ['Find Subword Under'] = '<C-n>', -- 查找选中光标下的相同单词
      ['Select All'] = '<C-d>',
      ['Select h'] = '<C-Left>',
      ['Select l'] = '<C-Right>',
      ['Add Cursor Up'] = '<C-Up>',
      ['Add Cursor Down'] = '<C-Down>',
      ['Add Cursor At Pos'] = '<C-x>',
      ['Add Cursor At Word'] = '<C-w>',
      ['Move Left'] = '<C-S-Left>',
      ['Move Right'] = '<C-S-Right>',
      ['Remove Region'] = 'q',
      ['Increase'] = '+',
      ['Decrease'] = '_',
      ["Undo"] = 'u',
      ["Redo"] = '<C-r>',
    }
  end
}
