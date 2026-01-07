return {
    'nvim-treesitter/nvim-treesitter',
    lazy= false,
    build = ':TSUpdate',
    opts = {
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = {
            "bash", "c", "css", "go", "html", "javascript", "jason", "lua", "luadoc", "scss", "tsx", "typescript", "vim", "yaml"
        },
        auto_install = true,
    }
}
