return {
    -- Fuzzy Finder (files, lsp, etc)
    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    dependencies = {
        { 'nvim-lua/plenary.nvim' },
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make',
            -- `cond` is a condition used to determine whether this plugin should be
            -- installed and loaded.
            cond = function()
                return vim.fn.executable 'make' == 1
            end,
        },
        { 'nvim-telescope/telescope-ui-select.nvim' },
        { -- Useful for getting pretty icons, but requires a Nerd Font.
            'nvim-tree/nvim-web-devicons', 
            enabled = vim.g.have_nerd_font 
        },
        { 'folke/todo-comments.nvim' },
    },
    config = function()
        local telescope = require('telescope')
        local actions = require('telescope.actions')
        local transform_mod = require("telescope.actions.mt").transform_mod

        telescope.setup({
            extensions = {
                ['ui-select'] = { require('telescope.themes').get_dropdown() },
            },
            defaults = {
                path_display = { 'smart' },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                        ["<C-j>"] = actions.move_selection_next, -- move to next result
                    },
                },
            },
        })

        -- Enable Telescope extensions if they are installed
        pcall(telescope.load_extension, 'fzf')
        pcall(telescope.load_extension, 'ui-select')

        -- Keymaps
        local keymap = vim.keymap

        keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
        keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
        keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
    
    end
}
