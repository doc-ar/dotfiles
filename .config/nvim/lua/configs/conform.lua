-- Define your existing formatter configurations
local options = {
  formatters_by_ft = {
    python = { "autopep8" },
    bash = { "shfmt" },
    sh = { "shfmt" },
    lua = { "stylua" },
    go = { "goimports", "gofumpt", "goimports-reviser" },
    javascript = { { "prettierd", "prettier" } },
    typescript = { { "prettierd", "prettier" } },
    javascriptreact = { { "prettierd", "prettier" } },
    typescriptreact = { { "prettierd", "prettier" } },
    vue = { { "prettierd", "prettier" } },
    css = { { "prettierd", "prettier" } },
    scss = { { "prettierd", "prettier" } },
    less = { { "prettierd", "prettier" } },
    html = { { "prettierd", "prettier" } },
    json = { { "prettierd", "prettier" } },
    jsonc = { { "prettierd", "prettier" } },
    yaml = { { "prettierd", "prettier" } },
    markdown = { { "prettierd", "prettier" } },
    ["markdown.mdx"] = { { "prettierd", "prettier" } },
    graphql = { { "prettierd", "prettier" } },
    handlebars = { { "prettierd", "prettier" } },
  },

  format_on_save = function(bufnr)
    -- Disable with a global or buffer-local variable
    if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
      return
    end
    return { timeout_ms = 500, lsp_format = "fallback" }
  end,
}

-- Setup Conform with options
require("conform").setup(options)

-- Create Neovim user commands for toggling auto formatting
vim.api.nvim_command [[command! FormatDisable :lua require('configs.format').disable_autoformat()]]
vim.api.nvim_command [[command! FormatEnable :lua require('configs.format').enable_autoformat()]]
