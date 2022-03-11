local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'mhinz/vim-signify'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

Plug 'lunarvim/colorschemes'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

Plug 'junegunn/fzf'

vim.call('plug#end')
