vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use { 'wbthomason/packer.nvim', opt = true }

  local conf = function(name)
    return require('plugins.' .. name)
  end

  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use 'moll/vim-bbye' -- easy buffer closing

  use {
    'folke/trouble.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('trouble').setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end,
  }

  use {
    'folke/which-key.nvim',
    config = function()
      require('which-key').setup {}
    end,
  }

  use {
    'folke/twilight.nvim',
    config = function()
      require('twilight').setup {}
    end,
  }

  use {
    'folke/zen-mode.nvim',
    config = function()
      require('zen-mode').setup {
        -- window = {
        --   width = 0.6,
        -- },
      }
    end,
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = conf 'treesitter',
  }

  use 'windwp/nvim-ts-autotag' -- automatically close jsx tags
  use 'JoosepAlviste/nvim-ts-context-commentstring' -- makes jsx comments actually work

  use {
    'karb94/neoscroll.nvim',
    config = function()
      require('neoscroll').setup {}
    end,
  }

  use {
    'max397574/better-escape.nvim',
    config = function()
      require('better_escape').setup {
        mapping = { 'jk', 'kj' },
      }
    end,
  }

  -- use {
  --   'catppuccin/nvim',
  --   as = 'catppuccin',
  --   config = function()
  --     require('catppuccin').setup {}

  --     -- catppuccin theme
  --     vim.g.catppuccin_flavour = 'mocha' -- latte, frappe, macchiato, mocha
  --     vim.cmd 'colorscheme catppuccin'
  --   end,
  -- }

  -- use {
  --   'sonph/onehalf',
  --   rtp = 'vim/',
  --   config = function()
  --     vim.cmd 'colorscheme onehalfdark'
  --   end,
  -- }

  use {
    'rmehri01/onenord.nvim',
    config = function()
      -- if you want to inspect colors, paste this in command mode ↓
      -- lua print(vim.inspect(require'onenord.colors'.load()))

      require('onenord').setup {
        custom_colors = {
          bg = '#22262E',
          active = '#282E38', -- nvim-tree, cursorline
        },
      }
    end,
  }

  -- use {
  --   'xiyaowong/nvim-transparent',
  --   config = function()
  --     require('transparent').setup {
  --       enable = true, -- boolean: enable transparent
  --       extra_groups = {},
  --       exclude = {}, -- table: groups you don't want to clear
  --     }
  --   end,
  -- }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
    config = conf 'tree',
  }

  use {
    'akinsho/nvim-bufferline.lua',
    config = conf 'bufferline',
  }

  use {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup {
        options = {
          theme = 'onenord',
          section_separators = { left = '', right = '' },
          component_separators = { left = '', right = '' },
        },
        sections = {
          lualine_a = { 'mode' },
          lualine_b = { 'branch', 'diff', 'diagnostics' },
          lualine_c = { 'filename' },
          lualine_x = { 'filesize' },
          lualine_y = { 'filetype' },
          lualine_z = { 'location' },
        },
        -- dont like the look of an inactive session line
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {},
          lualine_x = {},
          lualine_y = {},
          lualine_z = {},
        },
      }
    end,
  }

  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup {}
    end,
  }

  use {
    'hrsh7th/nvim-cmp', -- autocomplete plugin
    -- TODO verify the need for each of these
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-emoji',
      'onsails/lspkind-nvim', -- Enables icons on completions
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
    },
    config = conf 'cmp',
  }
  use {
    'windwp/nvim-autopairs', -- autocomplete pairs
    config = function()
      require('nvim-autopairs').setup {
        check_ts = true,
      }
    end,
    wants = 'nvim-cmp',
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/popup.nvim', 'nvim-telescope/telescope-fzy-native.nvim' },
    config = conf 'telescope',
  }

  use {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup {}
    end,
  }

  use {
    'ray-x/go.nvim',
    config = function()
      require('go').setup {}
    end,
  }

  use {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('mason-lspconfig').setup {}
    end,
  }

  use 'neovim/nvim-lspconfig'


  use 'jose-elias-alvarez/null-ls.nvim'
  use 'jose-elias-alvarez/typescript.nvim'
  use 'nvim-lua/plenary.nvim'
end)
