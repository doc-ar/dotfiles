local M = {}

function M.disable_autoformat()
  vim.g.disable_autoformat = true
  vim.notify = require "notify"
  vim.notify("autoformat-on-save disabled globally", "info", { title = "conform.nvim" })
end

function M.enable_autoformat()
  vim.g.disable_autoformat = false
  vim.notify = require "notify"
  vim.notify("autoformat-on-save enabled globally", "info", { title = "conform.nvim" })
end

return M
