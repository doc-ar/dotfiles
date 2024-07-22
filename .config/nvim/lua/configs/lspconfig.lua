local config = require "nvchad.configs.lspconfig"

local on_attach = config.on_attach
local capabilities = config.capabilities
local on_init = config.on_init

local lspconfig = require "lspconfig"

local servers = { "html", "cssls", "tsserver", "pyright", "lua_ls", "jsonls", "hyprls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

lspconfig.gopls.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}
