local G = require('G')
local g = vim.g
local opt = vim.opt

g.gutentags_project_root = {
    ".root",
    ".svn",
    ".git",
    ".project",
    ".dj",
}

g.gutentags_ctags_extra_args = {
    '--extra=+q',
    '--c-kinds=+px',
    '--fields=+niazS',
    '--c++kinds=+pxIi',
}

local ctagsCache = '/home/dingjing/.cache/tags/'

opt.tags = '.tags'
g.vim_tags = '.tags' --ctagsCache
--g.gutentags_cache_dir = ctagsCache
--g.gutentags_ctags_tagfile = '.tags'

g.autotagsStartMethod = 'fork'

vim.call('mkdir', ctagsCache, 'p')

