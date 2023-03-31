dprint('keybinds')
-- keymap('n', '<Leader><Space>', ':set hlsearch!<CR>', { noremap = true, silent = true })

function keymap(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true })
end

vim.g.mapleader = " "
keymap('n', '<leader>q', ':q!<CR>')
keymap('n', '<leader>w', ':w<CR>')
keymap('n', '<leader>vs', ':vsplit<CR>')
keymap('n', '<leader>hs', ':split<CR>')

-- keymap({'x', 'n'}, '<leader>-1', ':tabf<cr>')
-- keymap({'x', 'n'}, '<leader>-2', ':tabn2<cr>')
-- keymap({'x', 'n'}, '<leader>-3', ':tabn3<cr>')
-- keymap({'x', 'n'}, '<leader>-4', ':tabn4<cr>')
-- keymap({'x', 'n'}, '<leader>-5', ':tabn5<cr>')
-- keymap({'x', 'n'}, '<leader>-6', ':tabn6<cr>')
-- keymap({'x', 'n'}, '<leader>-7', ':tabn7<cr>')
-- keymap({'x', 'n'}, '<leader>-8', ':tabn8<cr>')
-- keymap({'x', 'n'}, '<leader>-9', ':tabn9<cr>')
-- keymap({'x', 'n'}, '<leader>-0', ':tabl<cr>')

-- Alt-{h,j,k,l} to navigate windows
keymap({'t', 'i'}, '<A-j>', [[<C-\><C-N><C-w>j]])
keymap({'t', 'i'}, '<A-k>', [[<C-\><C-N><C-w>k]])
keymap({'t', 'i'}, '<A-l>', [[<C-\><C-N><C-w>l]])
keymap({'t', 'i'}, '<A-h>', [[<C-\><C-N><C-w>h]])
keymap('n', '<A-j>', '<C-w>j')
keymap('n', '<A-k>', '<C-w>k')
keymap('n', '<A-l>', '<C-w>l')
keymap('n', '<A-h>', '<C-w>h')

keymap('n', '<C-t>', ':NvimTreeToggle<CR>')

keymap('n', '<F3>', ':TagbarToggle<CR>')

-- esc in terminal
keymap('t', '<Esc>', [[<C-\><C-n>]])

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
keymap('n', '<leader>cd', ':cd %:p:h<CR>:pwd<CR>')

-- center cursor on screen
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")
