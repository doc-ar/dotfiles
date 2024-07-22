return {
  {
    "stevearc/conform.nvim",
    lazy = false,
    event = "BufWritePre", -- uncomment for format on save
    cmd = { "ConformInfo" },
    config = function()
      require "configs.conform"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "pyright",
        "prettier",
        "gopls",
      },
    },
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
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
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
}
