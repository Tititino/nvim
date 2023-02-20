dprint('plugin.init')

local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
    		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    		vim.cmd [[packadd packer.nvim]]
    		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	use 'tpope/vim-fugitive' 

	-- https://github.com/tpope/vim-surround: all about "surroundings": parentheses, brackets, quotes, XML tags, and more.
	-- The plugin provides mappings to easily delete, change and add such surroundings in pairs.
	use 'tpope/vim-surround' 

	-- use 'tiagofumo/vim-nerdtree-syntax-highlight'

   	use 'is0n/jaq-nvim'
   	use { 
		'williamboman/mason.nvim',
		config = function() 
			require('plugin.config.mason') 
		end 
	}
	use {
		'nvim-tree/nvim-tree.lua',
		config = function() require('plugin.config.nvim-tree') end 
	}

	use 'RRethy/vim-hexokinase'
	use 'neovim/nvim-lspconfig'
        use 'tpope/vim-commentary'
        use 'tc50cal/vim-terminal'
	use 'mg979/vim-visual-multi'
        use 'preservim/tagbar' 
        use 'junegunn/fzf.vim'
	use 'lervag/vimtex'
	use 'Vonr/align.nvim'
	use 'nvim-treesitter/nvim-treesitter'

	-- https://github.com/MrcJkb/haskell-tools.nvim: haskell dev helper tools
	use {
		'MrcJkb/haskell-tools.nvim',
		requires = {
    			'neovim/nvim-lspconfig',
    			'nvim-lua/plenary.nvim'
		},
		ft = {'hs', 'lhs'},
		config = function() require('plugin.config.haskell-tools') end 
	}
	-- https://github.com/nvim-telescope/telescope.nvim
	use {
	  	'nvim-telescope/telescope.nvim', 
		tag = '0.1.0',
	  	requires = { 
			'nvim-lua/plenary.nvim'
		},
		config = function() require('plugin.config.telescope') end 
	}

	use 'luc-tielen/telescope_hoogle'
	-- https://github.com/hkupty/iron.nvim: repl helper
	-- use {'hkupty/iron.nvim', tag = "<most recent tag>"}
   	if ensure_packer() then	
		require('packer').sync()
	end
end)
