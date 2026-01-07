return {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {
        preset = 'helix',
        delay = 300,
        sort = { "alphanum", "local", "order", "group", "mod" },
        icons = {
            rules = false,
            breadcrumb = "»",
            separator = "→",
            group = "+",
        },
        plugins = {
            marks = true,
            registers = true,
            spelling = { enabled = false },
        },
        win = {
            border = "rounded",
            padding = { 1, 2 },
        },
        spec = {
            mode = { 'n', 'v' },
            -- Navigation groups
            { "[", group = "Prev" },
            { "]", group = "Next" },
            { "g", group = "Goto" },
        },
    },
    keys = {
      { "<leader>?", function() require("which-key").show({ global = false }) end, desc = "Buffer Keymaps" },
      { "<leader>K", function() require("which-key").show({ global = true }) end, desc = "All Keymaps" },
    },
}
