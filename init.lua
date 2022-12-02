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
				}
                	},
			git = {
				unstaged = '~',
				staged = ' ',
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

require('mason').setup({
  	ui = {
    		border = 'rounded',
    		keymaps = {
      			-- Keymap to expand a server in the UI
      			toggle_package_expand = "<CR>",
      			-- Keymap to install the server under the current cursor position
      			install_package = "i",
      			-- Keymap to reinstall/update the server under the current cursor position
      			update_server = "u",
      			-- Keymap to check for new version for the server under the current cursor position
      			check_package_version = "c",
      			-- Keymap to update all installed servers
      			update_all_packages = "U",
      			-- Keymap to check which installed servers are outdated
      			check_outdated_packages = "C",
      			-- Keymap to uninstall a server
      			uninstall_package = "X",
      			-- Keymap to cancel a package installation
      			cancel_installation = "<C-c>",
      			-- Keymap to apply language filter
      			apply_language_filter = "<C-f>",
    		},
  	},

  	install_root_dir = vim.fn.stdpath "data".."/mason",

  	pip = {
    		install_args = {},
  	},

  	max_concurrent_installers = 3,

  	github = {
    		-- The template URL to use when downloading assets from GitHub.
    		-- The placeholders are the following (in order):
    		-- 1. The repository (e.g. "rust-lang/rust-analyzer")
    		-- 2. The release version (e.g. "v0.3.0")
    		-- 3. The asset name (e.g. "rust-analyzer-v0.3.0-x86_64-unknown-linux-gnu.tar.gz")
    		download_url_template = "https://github.com/%s/releases/download/%s/%s",
  	},

  	log_level = vim.log.levels.INFO,
})

-- made a link to haskell-language-server because it didn't seem to work otherwise,
-- might switch to plain lsp
local ht = require('haskell-tools')
local def_opts = { noremap = true, silent = true, }
ht.setup {
  	hls = {
    		-- See nvim-lspconfig's  suggested configuration for keymaps, etc.
    		on_attach = function(client, bufnr)
      			local opts = vim.tbl_extend('keep', def_opts, { buffer = bufnr, })
      			-- haskell-language-server relies heavily on codeLenses,
      			-- so auto-refresh (see advanced configuration) is enabled by default
      			vim.keymap.set('n', '<space>ca', vim.lsp.codelens.run, opts)
      			vim.keymap.set('n', '<space>hs', ht.hoogle.hoogle_signature, opts)
      			-- default_on_attach(client, bufnr)  -- if defined, see nvim-lspconfig
    		end,
  	},
}

-- Suggested keymaps that do not depend on haskell-language-server
-- Toggle a GHCi repl for the current package
vim.keymap.set('n', '<leader>rr', ht.repl.toggle, def_opts)
-- Toggle a GHCi repl for the current buffer
vim.keymap.set('n', '<leader>rf', function()
  	ht.repl.toggle(vim.api.nvim_buf_get_name(0))
end, def_opts)
vim.keymap.set('n', '<leader>rq', ht.repl.quit, def_opts)


vim.api.nvim_create_autocmd('FileType', {
  	pattern = { "*" },
  	callback = function(args)
    	local ft = vim.bo[args.buf].filetype
    		if ft == 'haskell' then
			set.expandtab = true
		end
  	end 
})
