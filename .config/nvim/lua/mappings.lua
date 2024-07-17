require "nvchad.mappings"

-- Function to run current Go file in a floating terminal
-- local function run_current_go_file_in_floating_terminal()
--   local current_file = vim.fn.expand "%:p" -- Get full path of current file
--   require("nvchad.term").runner {
--     cmd = "go run " .. current_file,
--     id = "floatTerm",
--     pos = "float",
--     clear_cmd = "clear; ",
--   }
-- end

-- add yours here

local map = vim.keymap.set

-- Buffer Navigation
map("n", "<S-l>", ":bnext<CR>", { noremap = true, silent = true })
map("n", "<S-h>", ":bprevious<CR>", { noremap = true, silent = true })

-- Run Code using Jaq plugin
map("n", "<leader>cr", ":w<CR>:Jaq<CR>", { desc = "Run Code" })
map("n", "<leader>fd", ":FormatDisable<CR>", { desc = "Disable Auto Formatting" })
map("n", "<leader>fe", ":FormatEnable<CR>", { desc = "Enable Auto Formatting" })

-- Shortcut for markdown preview toggle
map("n", "<leader>mp", ":MarkdownPreviewToggle<CR>", { desc = "Toggle Markdown Preview" })

-- Git commands
map("n", "<leader>gg", ":Neogit<CR>", { desc = "Neogit Home" })
-- map("n", "<leader>gc", ":Git commit<CR>", { desc = "Git commit" })
-- map("n", "<leader>gp", ":Git push<CR>", { desc = "Git push" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Mapping to run current Go file in floating terminal
-- map("n", "<leader>cr", function()
--   run_current_go_file_in_floating_terminal()
-- end, { desc = "Run current Go file in floating terminal" })

-- map("n", "<leader>cr", ":w<CR>:!go run %<CR>", { desc = "Run Code" })
