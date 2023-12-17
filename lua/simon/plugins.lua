
require("lazy").setup({
  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = "all",
        highlight = { enable = true },
        indent = { enable = true },
        autotag = { enable = true, enable_close_on_slash = false },
      })
    end,
  },
  -- Fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },

  -- Style stuff
  {
    -- configured in colorscheme.lua
    "rebelot/kanagawa.nvim",
    lazy = false,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = { char = "▏" },
      scope = { show_start = false, show_end = false, injected_languages = false },
    },
  },
  {
    -- Highlight other uses of word under cursor
    "RRethy/vim-illuminate",
    config = function()
      vim.api.nvim_set_hl(0, "IlluminatedWordText", { link = "Visual" })
      vim.api.nvim_set_hl(0, "IlluminatedWordRead", { link = "Visual" })
      vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { link = "Visual" })
      --- auto update the highlight style on colorscheme change
      vim.api.nvim_create_autocmd({ "ColorScheme" }, {
        pattern = { "*" },
        callback = function(ev)
          vim.api.nvim_set_hl(0, "IlluminatedWordText", { link = "Visual" })
          vim.api.nvim_set_hl(0, "IlluminatedWordRead", { link = "Visual" })
          vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { link = "Visual" })
      end
    })
    end,
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {}
  },
  "nvim-lualine/lualine.nvim",

  -- Navigation
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- requires https://www.nerdfonts.com/
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    opts = function()
      return {
        sources = {
          "filesystem",
          "buffers",
        },
        filesystem = {
          follow_current_file = { enabled = true },
          hijack_netrw_behavior = "open_current",
          use_libuv_file_watcher = true,
        },
      }
    end,
  },

  -- lsp
  {
    "neovim/nvim-lspconfig",
    dependencies = { 
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim"
    },
  },

  -- Auto-complete
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
    },
  },
  {
    --"github/copilot.vim",
    "zbirenbaum/copilot.lua",
    opts = function()
      -- copilot will be managed through cmp using copilot-cmp
      return {
        suggestion = { enabled = false },
        panel = { enabled = false },
      }
    end
  },
  {
    "zbirenbaum/copilot-cmp",
    opts = {}
  },

  -- Automatic indentation
  "tpope/vim-sleuth",

  -- Utilities
  -- WhickKey: displays possible key bindings of typed commands
  {
    "folke/which-key.nvim",
    opts = {
      plugins = { spelling = true },
      defaults = {
        mode = { "n", "v" },
        ["<leader>f"] = { name = "file" },
        ["<leader>d"] = { name = "diagnostics" },
        ["<leader>w"] = { name = "window" },
      },
    },
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)
      wk.register(opts.defaults)
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
  },

  -- Terminal
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true
  },

  {
    -- Mappings
    -- NORMAL:
    --  gcc - comment line
    --  gbc - comment line (block comment)
    -- INSERT:
    --  gc - comment line
    --  gb - comment line (block comment)

    "numToStr/Comment.nvim",
    opts = {}
  },
  -- Git
  {
    "lewis6991/gitsigns.nvim",
    opts = function()
      return {
        current_line_blame = true,
        current_line_blame_opts = {
          delay = 1000,
          virt_text_pos = "eol",
        },
      }
    end,
  },
  "tpope/vim-rhubarb",
  "tpope/vim-fugitive",
  "eandrju/cellular-automaton.nvim",
})


  -- {
  --   'nvim-lualine/lualine.nvim',
  --   opts = {
  --     options = {
  --       icons_enabled = false,
  --       theme = 'onedark',
  --       component_separators = '|',
  --       section_separators = '',
  --     },
  --   },
  -- },
