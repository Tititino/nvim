dprint('keybinds')
-- keymap('n', '<Leader><Space>', ':set hlsearch!<CR>', { noremap = true, silent = true })

function keymap(mode, lhs, rhs, opts)
	vim.keymap.set(mode, lhs, rhs, opts)
end

vim.g.mapleader = " "
keymap('n', '<leader>q', ':q!<CR>', {noremap = true, silent = true})
keymap('n', '<leader>w', ':w<CR>',  {noremap = true, silent = true})
keymap('n', '<leader>vs', ':vsplit<CR>',  {noremap = true, silent = true})
keymap('n', '<leader>hs', ':split<CR>',  {noremap = true, silent = true})

keymap({'x', 'n'}, '<leader>-1', ':tabf<cr>', { noremap = true, silent = true })
keymap({'x', 'n'}, '<leader>-2', ':tabn2<cr>', { noremap = true, silent = true })
keymap({'x', 'n'}, '<leader>-3', ':tabn3<cr>', { noremap = true, silent = true })
keymap({'x', 'n'}, '<leader>-4', ':tabn4<cr>', { noremap = true, silent = true })
keymap({'x', 'n'}, '<leader>-5', ':tabn5<cr>', { noremap = true, silent = true })
keymap({'x', 'n'}, '<leader>-6', ':tabn6<cr>', { noremap = true, silent = true })
keymap({'x', 'n'}, '<leader>-7', ':tabn7<cr>', { noremap = true, silent = true })
keymap({'x', 'n'}, '<leader>-8', ':tabn8<cr>', { noremap = true, silent = true })
keymap({'x', 'n'}, '<leader>-9', ':tabn9<cr>', { noremap = true, silent = true })
keymap({'x', 'n'}, '<leader>-0', ':tabl<cr>', { noremap = true, silent = true })

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

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- local al = require('align')
-- vim.keymap.set('x', 'aa', function() require('align').align_to_char(1, true)             end, { noremap = true, silent = true }) -- Aligns to 1 character, looking left
-- vim.keymap.set('x', 'as', function() align.align_to_char(2, true, true)       end, { noremap = true, silent = true }) -- Aligns to 2 characters, looking left and with previews
-- vim.keymap.set('x', 'aw', function() align.align_to_string(false, true, true) end, { noremap = true, silent = true }) -- Aligns to a string, looking left and with previews
-- vim.keymap.set('x', 'ar', function() align.align_to_string(true, true, true)  end, { noremap = true, silent = true }) -- Aligns to a Lua pattern, looking left and with previews


-- change working directory to the location of the current file 
keymap('n', '<leader>cd', ':cd %:p:h<CR>:pwd<CR>', { noremap = true, silent = true} )
