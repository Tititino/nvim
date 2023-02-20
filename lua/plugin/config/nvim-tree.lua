dprint('config nvim-tree')

local ok, nvim_tree = pcall(require, 'nvim-tree')
if not ok then 
	vim.notify('Error with module nvim-tree (' .. nvim-tree .. ')', 'Error')
	return
end

-- local api = require('nvim-tree.api')

nvim_tree.setup({
	auto_reload_on_write = true,
	-- disable_netrw = true,
	-- hijack_cursor = true,
	hijack_netrw = true, -- overriden if 'disable_netrw = true'
	-- hijack_unnamed_buffer_when_opening = true,
	-- ignore_buffer_on_setup = false,
	-- open_on_setup = true,
	-- open_on_setup_file = false,
	open_on_tab = true,
	sync_root_with_cwd = true,
	reload_on_bufenter = true,
	respect_buf_cwd = true,
	sort_by = "case_sensitive",
	-- filesystem_watchers = {
	-- 	enable = true,
	--     	debounce_delay = 100,
	-- },
	view = {
	    	width = 34,
	    	adaptive_size = false,
	    	hide_root_folder = false,
	    	side = "left",
	    	preserve_window_proportions = false,
	    	number = false,
	    	-- relativenumber = true,
	    	-- signcolumn = "yes",
	    	mappings = {
	      		custom_only = false,
	      		list = { -- custom mappings
	        		{ key = { "l", "<CR>", "o" }, action = "edit" },
	        		{ key = { "-", "<BS>" }, action = "dir_up" },
	        		{ key = { "<Esc>", "q" }, action = "close" },
	        		{ key = "x", action = "close_node" },
	        		{ key = "L", action = "cd" },
	        		{ key = ".", action = "cd" },
	        		{ key = "O", action = "system_open" },
	        		{ key = "s", action = "split" },
	        		{ key = "<C-x>", action = "collapse_all" },
	        		{ key = "v", action = "vsplit" },
	        		{ key = "V", action = "vsplit_preview", action_cb = vsplit_preview },
	        		{ key = "p", action = "preview" },
	        		{ key = "^", action = "parent_node" },
	        		{ key = "/", action = "search" },
	        		{ key = "?", action = "toggle_help" },
	      		},
	    	},
	},
	renderer = {
	    	add_trailing = true,
	    	group_empty = false,
	    	highlight_git = true,
	    	highlight_opened_files = "name",
	    	root_folder_modifier = ":t",
	    	indent_markers = {
	      		enable = true,
	      		icons = {
	        		corner = '└',
	        		edge = '│',
	        		none = '│',
	      		},
		},
	    	icons = {
	      		-- webdev_colors = true,
	      		git_placement = "after",
	      		glyphs = {
	        		default = ' ',
	        		symlink = ' ',
	        		git = {
	          			unstaged = '-',
	          			staged = '+',
	          			unmerged = ' ',
	          			renamed = ' ',
	          			untracked = '~',
	          			deleted = 'x',
	          			ignored = ' ',
	        		},
	        		folder = {
	          			arrow_open = '├',
	          			arrow_closed = '│',
	          			default = '▸',
	          			open = '▾',
	          			empty = '▹',
	          			empty_open = '▿',
	          			symlink = '~>',
	          			symlink_open = '<~',
	        		},
	      		},
	    	},
	    	special_files = {
	      		["README.md"] = true
	    	},
	},
	hijack_directories = {
	    	enable = true,
	    	auto_open = false,
	},
	-- update_focused_file = {
	--     	enable = true,
	--     	update_root = true,
	--     	ignore_list = {},
	-- },
	-- ignore_ft_on_setup = { "alpha" },
	-- system_open = {
		-- cmd = nil,
	    	-- args = {},
	-- },
	-- diagnostics = {
	--     	enable = true,
	--     	icons = {
	--       		hint = icons.diagnostics.Hint,
	--       		info = icons.diagnostics.Information,
	--       		warning = icons.diagnostics.Warning,
	--       		error = icons.diagnostics.Error,
	--     	},
	-- },
	filters = {
	    	dotfiles = false,
	    	custom = { ".git/", ".cache", ".DS_Store" },
	    	exclude = {},
	},
	git = {
	    	enable = true,
	    	ignore = false,
	    	timeout = 400,
	},
	-- actions = {
	--     	use_system_clipboard = true,
	--     	change_dir = {
	--       		enable = true,
	--       		global = false,
	-- 	},
	-- 	open_file = {
	--       		quit_on_open = false,
	--       		resize_window = true,
	--       		window_picker = {
	--         		enable = true,
	--         		chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
	--         		exclude = {
	--           			filetype = { "notify", "packer", "qf", "diff", "help" },
	--           			buftype = { "nofile", "terminal", "help" },
	--         		},
	--       		},
	--     	},
	-- },
	-- trash = {
	--     	cmd = "trash",
	--     	require_confirm = true,
	-- },
	-- log = {
	--     	enable = false,
	--     	types = {
	--       		all = false,
	--       		config = false,
	--       		copy_paste = false,
	--       		diagnostics = false,
	--       		git = false,
	--       		profile = false,
	--     	},
	-- }
})
