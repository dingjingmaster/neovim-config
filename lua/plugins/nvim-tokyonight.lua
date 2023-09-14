return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        style = "night",
        sidebars = { "qf", "vista_kind", "terminal", "packer" },
    },
    --config = function ()
    --    vim.cmd([[colorscheme tokyonight-night]])
    --end
}
