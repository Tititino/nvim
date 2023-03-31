----------------------------------------------------
-- File         : init.lua
-- Description  : Nvim config
-- Author       : Tino 
----------------------------------------------------


function dprint(s)
--	print(s)
end

dprint('init')

local set = vim.opt
vim.opt.number = true
set.relativenumber = true 
set.tabstop = 8
set.mouse = 'a'
set.background = 'light'
set.cursorline = true
set.encoding = 'utf-8'
set.termguicolors = true
set.filetype = 'on'

-- vim.o.foldmethod = 'syntax'
-- vim.o.foldnestmax = 10
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'

vim.cmd('colorscheme tino')

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- should be in the autoload folder
vim.api.nvim_create_autocmd('FileType', {
  	pattern = { "*" },
  	callback = function(args)
    		local ft = vim.bo[args.buf].filetype
    		if ft == 'haskell' then
			set.expandtab = true
		end
	end
})

-- Persistent Folds
local save_fold = vim.api.nvim_create_augroup("Persistent Folds", { clear = true })
vim.api.nvim_create_autocmd('BufWinLeave', {
  	pattern = "*.*",
  	callback = function()
    		vim.cmd.mkview()
  	end,
  	group = save_fold
})

vim.api.nvim_create_autocmd("BufWinEnter", {
  	pattern = "*.*",
  	callback = function()
    		vim.cmd.loadview({ mods = { emsg_silent = true } })
  	end,
  	group = save_fold
})

-- Persistent Cursor
vim.api.nvim_create_autocmd("BufReadPost", {
  	callback = function()
    		local mark = vim.api.nvim_buf_get_mark(0, '"')
    		local lcount = vim.api.nvim_buf_line_count(0)
    		if mark[1] > 0 and mark[1] <= lcount then
      			pcall(vim.api.nvim_win_set_cursor, 0, mark)
    		end
  	end
})

-- vim.api.nvim_create_autocmd('RememberFolds', {
-- 	callback = function(args)
-- 		vim.cmd([[	
-- 			augroup remember_folds
--    				autocmd!
--    				autocmd BufWinLeave ?* mkview
--    				autocmd BufWinEnter ?* silent! loadview
-- 			augroup END
-- 		]])
-- 	end})

require('plugin')
require('keybinds')
