vim.opt.scrolloff = 5         --Keep cursor off edge by 5
vim.opt.clipboard:append('unnamedplus') --desactivate registers and interact with clipboard directly

-- Search
vim.opt.ic = true             -- ignore case
vim.opt.hls = true            -- highlight matches
vim.opt.is = true             -- update search while typing

-- line
vim.opt.number = true         -- relativenumber
vim.opt.relativenumber = true -- relativenumber
vim.opt.signcolumn = 'number' -- merge vim-gutter with number column
vim.cmd([[
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
]])

-- Others
vim.opt.swapfile = false      -- No swap files

-- Global indenting
vim.opt.tabstop = 4           -- number of columns occupied by a tab character
vim.opt.softtabstop = 4       -- see multiple spaces as tabstops
vim.opt.shiftwidth = 4        -- width for autoindents
vim.opt.autoindent = true     -- indent a new line the same amount as the line just typed
vim.opt.expandtab = true      -- converts tabs to white space

-- Sync buffer with files
vim.opt.autowrite = true      -- automaticly write change when leaving a buffer
vim.opt.autoread = true       -- automaticly reload file if updated


-- cursor
vim.opt.cul = true

-- syntax
vim.opt.syntax = 'on'

-- file types
vim.cmd([[
autocmd FileType yaml,yml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType typescript setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType javascript,react setlocal ts=2 sts=2 sw=2 expandtab
au BufNewFile,BufRead *.ejs set filetype=html
]])

