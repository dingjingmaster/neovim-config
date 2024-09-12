return {
    "AkashKarnatak/rooter.nvim",
    config = function ()
        local G = require('G')
        G.g.rooter_pattern = {
            '.git',
            '.svn',
            'node_modules',
            'CMakeLists.txt',
            '.clangd',
            '.root'}
        G.outermost_root = false;
    end
}
