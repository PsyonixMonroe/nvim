local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- standard plugins --
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'akinsho/toggleterm.nvim'

-- Tree Explorer
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

-- useful as libraries --
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

-- colorscheme --
Plug 'lunarvim/colorschemes'
Plug 'blazkowolf/gruber-darker.nvim'

-- CMP --
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'

Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

-- LSP --
Plug 'VonHeikemen/lsp-zero.nvim'
Plug 'neovim/nvim-lspconfig'
Plug('williamboman/mason.nvim', { ['do'] = ':MasonUpdate' })
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'pierreglaser/folding-nvim'

-- Other Languages --
Plug 'towolf/vim-helm'
Plug 'hashivim/vim-terraform'

-- Telescope --
Plug 'nvim-telescope/telescope.nvim'

-- Treesitter --
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/nvim-treesitter-context'
Plug 'p00f/nvim-ts-rainbow'

-- Autopairs --
Plug 'windwp/nvim-autopairs'

-- Buffers
Plug 'akinsho/bufferline.nvim'
Plug 'moll/vim-bbye'

-- Github
Plug 'ldelossa/gh.nvim'
Plug 'ldelossa/litee.nvim'

-- Go Lang Plugins 
Plug 'mattn/vim-goimports'
Plug 'fatih/vim-go'

vim.call('plug#end')
