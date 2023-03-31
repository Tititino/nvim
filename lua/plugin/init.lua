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

	use 'Vonr/align.nvim'

	-- https://github.com/tpope/vim-surround: all about "surroundings": parentheses, brackets, quotes, XML tags, and more.
	-- The plugin provides mappings to easily delete, change and add such surroundings in pairs.

	-- use 'tiagofumo/vim-nerdtree-syntax-highlight'

        use 'junegunn/fzf.vim'
	use {
		'MrcJkb/haskell-tools.nvim',
		requires = {
    			'neovim/nvim-lspconfig',
    			'nvim-lua/plenary.nvim'
		},
		ft = {'hs', 'lhs'},
		config = function() require('plugin.config.haskell-tools') end 
	}
   	use 'is0n/jaq-nvim'
	use 'zyedidia/literate.vim'
	use 'neovim/nvim-lspconfig'
   	use { 
		'williamboman/mason.nvim',
		config = function() 
			require('plugin.config.mason') 
		end 
	}
        use 'benekastah/neomake'
	use {
		'nvim-tree/nvim-tree.lua',
		config = function() require('plugin.config.nvim-tree') end 
	}

	use {
		'vim-scripts/noweb.vim--McDermott',
		ft = 'nw',
		config = function() require('plugin.config.noweb') end
	}

	use 'nvim-treesitter/nvim-treesitter'

	-- use {
	-- 	'toppair/peek.nvim',
	--	run = 'deno task --quiet build:fast'
	-- 	ft = 'md',
	-- 	config = function () require('plugin.config.peek') end
	-- }


        use 'preservim/tagbar' 
	use {
	  	'nvim-telescope/telescope.nvim', 
		tag = '0.1.0',
	  	requires = { 
			'nvim-lua/plenary.nvim'
		},
		config = function() require('plugin.config.telescope') end 
	}

	use 'luc-tielen/telescope_hoogle'

        use 'tpope/vim-commentary'
	use 'tpope/vim-fugitive' 
	use 'RRethy/vim-hexokinase'
	use 'tpope/vim-surround' 
        use 'tc50cal/vim-terminal'
	use {
		'lervag/vimtex',
		ft = 'tex',
		config = function() 
			vim.g.tex_flavor = 'latex'
			vim.g.vimtex_view_method = 'zathura'
			vim.g.vimtext_compiler_method = 'luatex'
		end
	}
	use 'mg979/vim-visual-multi'
	-- https://github.com/hkupty/iron.nvim: repl helper
	-- use {'hkupty/iron.nvim', tag = "<most recent tag>"}
   	if ensure_packer() then	
		require('packer').sync()
	end
end)
