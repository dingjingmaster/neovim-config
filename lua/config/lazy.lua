local vim = vim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
  defaults = {
    lazy = true,                                            -- should plugins be lazy-loaded?
    version = false,                                        -- always use the latest git commit
  },
  lockfile = vim.fn.stdpath("config") .. "/lazy-lock.json", -- lockfile generated after running update.
  git = {
    -- defaults for the `Lazy log` command
    log = { "--since=3 days ago" },                         -- show commits from the last 3 days
    timeout = 120,                                          -- kill processes that take more than 2 minutes
    url_format = "https://github.com/%s.git",
  },
-- vim.cmd([[colorscheme catppuccin-mocha]])
  --install = { colorscheme = { "catppuccin-mocha" } },
  --install = { colorscheme = { "catppuccin-mocha", "habamax" } },
  ui = {
    -- a number <1 is a percentage., >1 is a fixed size
    size = { width = 0.8, height = 0.8 },
    -- The border to use for the UI window. Accepts same border values as |nvim_open_win()|.
    border = "single",
    icons = {
      cmd = " ",
      config = "",
      event = "",
      ft = " ",
      init = " ",
      import = " ",
      keys = " ",
      lazy = "鈴 ",
      loaded = "●",
      not_loaded = "○",
      plugin = " ",
      runtime = " ",
      source = " ",
      start = "",
      task = "✔ ",
      list = {
        "●",
        "➜",
        "★",
        "‒",
      },
    },
    -- leave nil, to automatically select a browser depending on your OS.
    -- If you want to use a specific browser, you can define it here
    browser = nil, ---@type string?
    throttle = 20, -- how frequently should the ui process render events
    -- you can define custom key maps here.
    -- To disable one of the defaults, set it to false
    custom_keys = {},
  },
  diff = {
    cmd = "git",
  },
  checker = { enabled = true },                             -- automatically check for plugin updates
  change_detection = {
    -- automatically check for config file changes and reload the ui
    enabled = true,
    notify = false, -- get a notification when changes are found
  },
  performance = {
    cache = {
      enabled = true,
      path = vim.fn.stdpath("cache") .. "/lazy/cache",
      -- Once one of the following events triggers, caching will be disabled.
      -- To cache all modules, set this to `{}`, but that is not recommended.
      -- The default is to disable on:
      --  * VimEnter: not useful to cache anything else beyond startup
      --  * BufReadPre: this will be triggered early when opening a file from the command line directly
      disable_events = { "UIEnter", "BufReadPre" },
      ttl = 3600 * 24 * 5, -- keep unused modules for up to 5 days
    },
    reset_packpath = true, -- reset the package path to improve startup time
    rtp = {
      reset = true, -- reset the runtime path to $VIMRUNTIME and your config directory
      ---@type string[]
      paths = { }, -- add any custom paths here that you want to indluce in the rtp
      ---@type string[] list any plugins you want to disable here
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
  readme = {
    --root = vim.fn.stdpath("state") .. "/lazy/readme",
    --files = { "README.md", "lua/**/README.md" },
    -- only generate markdown helptags for plugins that dont have docs
    --skip_if_doc_exists = true,
  },
})


