return {
  {
    "stevearc/conform.nvim",
    lazy = false,
    event = "BufWritePre",
    cmd = { "ConformInfo" },
    config = function()
      require "configs.conform"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {},
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    cmd = { "MasonToolsInstall", "MasonToolsClean", "MasonToolsUpdate" },
    config = function()
      require "configs.mason-tool-installer"
    end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require "configs.treesitter"
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require "configs.nvimtree"
    end,
  },
  ------------------------------
  -- Custom Plugins Added Here--
  ------------------------------
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require "configs.telescope"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "is0n/jaq-nvim",
    config = function()
      require "configs.jaq"
    end,
    cmd = { "Jaq" },
  },
  {
    "windwp/nvim-ts-autotag",
    lazy = false,
    config = function()
      require "configs.ts-autotag"
    end,
  },
  {
    "rcarriga/nvim-notify",
  },
  {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
      require "configs.peek"
    end,
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration

      -- Only one of these is needed, not both.
      "nvim-telescope/telescope.nvim", -- optional
    },
    cmd = { "Neogit" },
    config = true,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  {
    "github/copilot.vim",
    cmd = { "Copilot" },
  },
  {
    "ray-x/web-tools.nvim",
    config = function()
      require "configs.web-tools"
    end,
    cmd = { "BrowserSync", "BrowserOpen" },
  },
}
