local ok, nvim_tree = pcall(require, 'nvim-tree')
if not ok then return end

local api = require('nvim-tree.api')

nvim-tree.setup({
  	sort_by = 'case_sensitive',
  	renderer = {
		add_trailing = true,
    		group_empty = false,
    		highlight_git = false,
    		highlight_opened_files = "name",
    		root_folder_modifier = ":t",
    		indent_markers = {
      			enable = true,
      			icons = {
        			corner = "└",
        			edge = "│",
        			none = " ",
      			},
    		},
		icons = {
			glyphs = {
				default = ' ',
				symlink = '>',
				folder = {
                  			arrow_closed = ' ',
	                  		arrow_open = ' ',
	                  		default = '#',
	                  		open = 'O',
	                  		empty = '-',
	                  		empty_open = '-',
	                  		symlink = '>',
	                  		symlink_open = 'v',
	                	},
				git = {
					unstaged = '~',
					staged = ' ',
					unmerged = 'u',
					renamed = ' ',
					untracked = '~',
					deleted = '*',
					ignored = '/'
				}
			}
	  	}
  	}
})
