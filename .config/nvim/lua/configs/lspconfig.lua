require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "ts_ls",
  "lua_ls",
  "jsonls",
  "hyprls",
  "templ",
  "htmx",
  "gopls",
  "dockerls",
  "sqls",
  "pylsp",
  "tailwind-css-server",
}

vim.lsp.config("gopls", {
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
})

vim.lsp.config("pylsp", {
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          enabled = false,
        },
      },
    },
  },
})

vim.lsp.enable(servers)
