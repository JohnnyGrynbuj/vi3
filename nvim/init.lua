-- load modules
require('basic')
require('plugins')
require('mapping')
require('lsp')
require('_cmp')
require('gitsigns').setup()

-- cosmetics
vim.o.background = 'dark'
vim.cmd("colorscheme onedark")

-- Powerline
vim.g.airline_powerline_fonts = true
vim.g['airline#extensions#tabline#enabled'] = 1
vim.g['airline#extensions#tabline#formatter'] = 'unique_tail_improved'
vim.g.airline_theme = 'deus'

vim.g.indentLine_char_list = {'|', '¦', '┆', '┊'}

-- NerdTree
vim.g.netrw_liststyle = 3       -- Style of the explorer
vim.g.netrw_banner = 0          -- Remove the banner inside explorer
vim.g.netrw_browse_split = 4    -- open in previous windows
vim.g.netrw_winsize = 25        -- size of explorer (%)
vim.g.netrw_altv = 1

-- Json
vim.g.indentLine_setConceal = 0 -- éviter de cacher les quotes causé par indentline

