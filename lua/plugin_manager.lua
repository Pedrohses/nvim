local lazy = require 'lazy'

local plugins = {
  'windwp/nvim-ts-autotag',
  'windwp/nvim-autopairs',
  'folke/which-key.nvim',
  'folke/neodev.nvim',
  'j-hui/fidget.nvim',
  'jose-elias-alvarez/null-ls.nvim',
  'nvim-lualine/lualine.nvim',
  {
    'maxmx03/dracula.nvim',
    config = function()
      local dracula = require 'dracula'

      dracula.setup {
        soft = false,
        transparent = false,
      }

      vim.cmd 'colorscheme dracula'
    end
  },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    }
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'neovim/nvim-lspconfig',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/nvim-cmp',
    }
  },
  {
    'L3MON4D3/LuaSnip',
    dependencies = {
      'rafamadriz/friendly-snippets',
      'saadparwaiz1/cmp_luasnip'
    }
  },
  {
    'williamboman/mason.nvim',
    dependencies = {
      'williamboman/mason-lspconfig.nvim'
    }
  },
  {
    'ColaMint/pokemon.nvim',
    config = function()
     require('config.pokemon').setup()
    end
  },
  {
    'goolord/alpha-nvim',
    config = function()
      require('config.alpha').setup()
    end
  },
  {
    'akinsho/toggleterm.nvim',
    config = function()
      require('toggleterm').setup({
        -- Configurações adicionais, se necessário
        size = 10,  -- Tamanho do terminal
        open_mapping = [[<c-\>]],  -- Atalho para abrir o terminal
        direction = 'horizontal',  -- Direção do terminal (horizontal, vertical, tab)
        start_in_insert = true,  -- Começa em modo de inserção
    })
    end
  },
}

lazy.setup(plugins)
