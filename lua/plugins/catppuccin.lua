return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
        integrations = {
            alpha = false,
            cmp = true,
            flash = true,
            gitsigns = true,
            illuminate = true,
            indent_blankline = { enabled = true },
            lsp_trouble = true,
            mason = true,
            mini = true,
            native_lsp = {
                enabled = true,
                underlines = {
                    errors = { "undercurl" },
                    hints = { "undercurl" },
                    warnings = { "undercurl" },
                    information = { "undercurl" },
                },
            },
            navic = { enabled = true, custom_bg = "lualine" },
            neotest = true,
            noice = true,
            notify = true,
            neotree = true,
            semantic_tokens = true,
            telescope = true,
            treesitter = true,
            which_key = true,
        },
    },
    --
    --config = function ()
    --    vim.cmd([[colorscheme catppuccin-mocha]])
    --end
}
