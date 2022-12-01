-- install packer if not present 
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

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'tpope/vim-fugitive' 
	use 'tiagofumo/vim-nerdtree-syntax-highlight'
   	use 'is0n/jaq-nvim'
   	use 'williamboman/mason.nvim'
	use 'nvim-tree/nvim-tree.lua'
	use 'RRethy/vim-hexokinase'
	use 'neovim/nvim-lspconfig'
        use 'tpope/vim-commentary'
        use 'tc50cal/vim-terminal'
	use 'mg979/vim-visual-multi'
        use 'preservim/tagbar' 
        use 'junegunn/fzf.vim'
	use 'lervag/vimtex'
	use 'williamboman/mason.nvim'
   	if ensure_packer() then	
		require('packer').sync()
	end
end)

