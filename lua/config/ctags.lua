local G = require('G')
local g = vim.g
local opt = vim.opt
vim.notify = require("notify")

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

function log(msg)
    vim.notify(msg, "info")
end

function getProjectRootDir(path)
    log(path)
    
end

if nil == g.vim_tags then
    g.vim_tags = ctagsCache
else
    g.vim_tags = g.vim_tags .. ";" .. ctagsCache
end

if nil == g.gutentags_cache_dir then
    g.gutentags_cache_dir = ctagsCache
else
    g.gutentags_cache_dir = g.gutentags_cache_dir .. ";" .. ctagsCache
end
g.autotagsStartMethod = 'fork'
g.gutentags_ctags_tagfile = '.tags'

vim.call('mkdir', ctagsCache, 'p')

