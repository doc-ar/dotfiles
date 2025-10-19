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
}

vim.lsp.enable(servers)

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
