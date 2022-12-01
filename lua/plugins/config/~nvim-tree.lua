nvim-tree.setup({
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
})
