return {
    "morhetz/gruvbox",
    lazy = false,
    priority = 1000,
    opts = {},

    config = function ()
        vim.cmd([[
            colorscheme gruvbox
            set background=dark
        ]])
    end
}
