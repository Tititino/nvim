dprint('mason')

local ok, mason = pcall(require, 'mason')
if not ok then 
	vim.notify('Error with module mason (' .. mason .. ')', 'Error')
	return
end

mason.setup({
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
