return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      -- GO
      go = { "goimports", "gofmt" },
      -- Lua
      lua = { "stylua" },
      -- Web
      javascript = { "biome" },
      typescript = { "biome" },
      javascriptreact = { "biome" },
      typescriptreact = { "biome" },
      json = { "biome" },
      jsonc = { "biome" },
      yaml = { "biome" },
      markdown = { "biome" },
      html = { "biome" },
      css = { "biome" },
      scss = { "biome" },
    },
    default_format_opts = { lsp_format = "fallback" },
    format_on_save = {
      lsp_format = "fallback",
      timeout_ms = 500,
    },
    format_after_save = {
      lsp_format = "fallback",
    },
    -- Set the log level. Use `:ConformInfo` to see the location of the log file.
    log_level = vim.log.levels.ERROR,
    -- Conform will notify you when a formatter errors
    notify_on_error = true,
    -- Conform will notify you when no formatters are available for the buffer
    notify_no_formatters = true,
  },
}
