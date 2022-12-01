----------------------------------------------------
-- File         : init.lua
-- Description  : Nvim config
-- Author       : Tino 
-- Last Modified: 28 Nov 2022
----------------------------------------------------

local set = vim.opt
set.number = true
set.relativenumber = true set.tabstop = 8
set.mouse = 'a'
set.background = 'light'
set.cursorline = true
set.encoding = 'utf-8'
-- set.signcolumn = 'yes'
set.termguicolors = true

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

function keymap(mode, lhs, rhs, opts)
	vim.keymap.set(mode, lhs, rhs, opts)
end

require('keybinds')
require('plugins')
require('colors.tino').load()
require('nvim-tree').setup({
  	sort_by = 'case_sensitive',
  	renderer = {
	  	icons = {
		  	glyphs = {
				default = '',
				symlink = '>',
				folder = {
                  			arrow_closed = '',
                  			arrow_open = '',
                  			default = '#',
                  			open = 'O',
                  			empty = '-',
                  			empty_open = '-',
                  			symlink = '>',
                  			symlink_open = 'v',
				}
                	},
			git = {
				unstaged = '~',
				staged = '',
				unmerged = 'u',
				renamed = '',
				untracked = '~',
				deleted = '*',
				ignored = '/'
			}
		  }
	  }
  }
)
