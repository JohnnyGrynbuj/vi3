local Plug = vim.fn['plug#']
--call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
local path
if vim.fn.has('nvim') == 1 then
    path = vim.call('stdpath', 'data')
end
vim.call('plug#begin', path .. '/plugged')

-- cosmetics
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/edge'
Plug 'vim-airline/vim-airline'          -- Purely asthetique: see buffers, color mode (insert, visual)
Plug 'vim-airline/vim-airline-themes'   -- Handle preconfigure themes for vim-ailine
Plug 'wincent/terminus'                 -- cursor change appearance depending of mode (also tmux compatibility)
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'              -- Make tab (spaces) visible
Plug 'romainl/vim-cool'                 -- Disable search hithlight when search is over

-- utilities
Plug 'preservim/nerdtree'               -- :NERDTree to open
-- Plug 'junegunn/fzf'                     -- :Files : find files :Buffers
-- Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug ('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'make' })
Plug 'nvim-telescope/telescope.nvim'

-- Parse/modify general code
Plug 'tpope/vim-commentary'             -- gcc to comment, gc to comment block
Plug 'ntpeters/vim-better-whitespace'   -- highlight whitespaces & strip them (StripWhitespace)

Plug 'moll/vim-bbye'                    -- close buffer without closing windows
-- Plug 'tpope/vim-fugitive'               -- git tool: allow git command

-- Plug 'leafgarland/typescript-vim'

-- Code
-- Plug 'dense-analysis/ale'
-- Plug 'codota/tabnine-vim'
-- Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

-- lsp
Plug 'neovim/nvim-lspconfig'            -- Install lsp support
Plug 'williamboman/nvim-lsp-installer'  -- Install lsp servers and provide config to plugin above

-- completion
Plug 'hrsh7th/cmp-nvim-lsp'
-- Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

-- git
-- Plug 'f-person/git-blame.nvim'
Plug 'lewis6991/gitsigns.nvim'

-- multi cursor
Plug 'mg979/vim-visual-multi'
vim.call('plug#end')
