-- keymap('n', '<Leader><Space>', ':set hlsearch!<CR>', { noremap = true, silent = true })

vim.g.mapleader = " "
keymap('n', '<leader>q', ':q!<CR>', {noremap = true, silent = true})
keymap('n', '<leader>w', ':w<CR>',  {noremap = true, silent = true})
keymap('n', '<leader>vs', ':vsplit<CR>',  {noremap = true, silent = true})
keymap('n', '<leader>hs', ':split<CR>',  {noremap = true, silent = true})

keymap({'x', 'c', 'n'}, '<leader>-1', ':tabf<cr>', { noremap = true, silent = true })
keymap({'x', 'c', 'n'}, '<leader>-2', ':tabn2<cr>', { noremap = true, silent = true })
keymap({'x', 'c', 'n'}, '<leader>-3', ':tabn3<cr>', { noremap = true, silent = true })
keymap({'x', 'c', 'n'}, '<leader>-4', ':tabn4<cr>', { noremap = true, silent = true })
keymap({'x', 'c', 'n'}, '<leader>-5', ':tabn5<cr>', { noremap = true, silent = true })
keymap({'x', 'c', 'n'}, '<leader>-6', ':tabn6<cr>', { noremap = true, silent = true })
keymap({'x', 'c', 'n'}, '<leader>-7', ':tabn7<cr>', { noremap = true, silent = true })
keymap({'x', 'c', 'n'}, '<leader>-8', ':tabn8<cr>', { noremap = true, silent = true })
keymap({'x', 'c', 'n'}, '<leader>-9', ':tabn9<cr>', { noremap = true, silent = true })
keymap({'x', 'c', 'n'}, '<leader>-0', ':tabl<cr>', { noremap = true, silent = true })

-- Alt-{h,j,k,l} to navigate windows
keymap({'t', 'i'}, '<A-j>', [[<C-\><C-N><C-w>j]], { noremap = true, silent = true })
keymap({'t', 'i'}, '<A-k>', [[<C-\><C-N><C-w>k]], { noremap = true, silent = true })
keymap({'t', 'i'}, '<A-l>', [[<C-\><C-N><C-w>l]], { noremap = true, silent = true })
keymap({'t', 'i'}, '<A-h>', [[<C-\><C-N><C-w>h]], { noremap = true, silent = true })
keymap('n', '<A-j>', '<C-w>j', { noremap = true, silent = true })
keymap('n', '<A-k>', '<C-w>k', { noremap = true, silent = true })
keymap('n', '<A-l>', '<C-w>l', { noremap = true, silent = true })
keymap('n', '<A-h>', '<C-w>h', { noremap = true, silent = true })


keymap('n', '<C-t>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })


keymap('n', '<F3>', ':TagbarToggle<CR>', { noremap = true, silent = true })

-- esc in terminal
keymap('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })



