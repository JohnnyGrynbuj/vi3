-- mapping
function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

-- windows moves
nmap('<C-j>',       '<C-W><C-j>')
nmap('<C-Down>',    '<C-W><C-j>')
nmap('<C-k>',       '<C-W><C-k>')
nmap('<C-Up>',      '<C-W><C-k>')
nmap('<C-h>',       '<C-W><C-h>')
nmap('<C-Left>',    '<C-W><C-h>')
nmap('<C-l>',       '<C-W><C-l>')
nmap('<C-Right>',   '<C-W><C-l>')

-- file finding
nmap('ff'   , "<cmd>Telescope find_files<cr>")
nmap('fu'    , "<cmd>Telescope buffers<cr>")
nmap('€'    , "<cmd>Telescope buffers<cr>")
nmap('fl', "<cmd>Telescope live_grep<cr>")
nmap('<C-f>', "<cmd>Telescope live_grep<cr>")
nmap('<C-t>', "<cmd>NERDTreeToggle<cr>")
nmap('ft', "<cmd>NERDTreeFind<cr>")
nmap('<C-p>', "<cmd>NERDTreeFind<cr>")

-- Encode/Decode
vmap('<A-e>', 'c<c-r>=system("base64 -w 0", @")<cr>')
vmap('<A-d>', 'c<c-r>=system("base64 -d", @")<cr>')

-- CapsLock
-- gUw to capitalize word

-- Format json
nmap('fj', '<cmd>%!jq .<CR>')

-- Gitsigns
nmap('tn', '<cmd>Gitsigns next_hunk<CR>')
nmap('tu', '<cmd>Gitsigns prev_hunk<CR>')
nmap('te', '<cmd>Gitsigns preview_hunk<CR>')
nmap('tz', '<cmd>Gitsigns reset_hunk<CR>')
nmap('tq', '<cmd>Gitsigns reset_buffer<CR>')
nmap('tb', '<cmd>Gitsigns toggle_current_line_blame<CR>')

-- Saves
nmap('<C-s>', '<cmd>update<CR>')
vmap('<C-s>', '<C-c><cmd>update<CR>')
imap('<C-s>', '<C-o><cmd>update<CR><Esc>')
imap('<C-w>', '<C-o>db')
nmap('<C-w>', 'db')
imap('<C-k>', '<C-o>d$')
imap('<C-u>', '<C-o>d0')
imap('<C-d>', '<C-o>dd')
imap('<A-d>', '<C-o>dw')
nmap('<A-Left>', 'b<CR>')
nmap('<A-Right>', 'w<CR>')
