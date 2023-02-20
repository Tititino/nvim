dprint('haskell-tools')

local ok, ht = pcall(require, 'haskell-tools')
if not ok then 
	vim.notify('Error with module haskell-tools (' .. ht .. ')', 'Error')
	return
end

local def_opts = { noremap = true, silent = true, }
ht.setup({
	hls = {
		-- See nvim-lspconfig's suggested configuration for keymaps, etc.
		on_attach = function(client, bufnr)
			local opts = vim.tbl_extend('keep', def_opts, { buffer = bufnr, })
			-- haskell-language-server relies heavily on codeLenses,
       			-- so auto-refresh (see advanced configuration) is enabled by default
       			vim.keymap.set('n', '<leader>ca', vim.lsp.codelens.run, opts)
       			vim.keymap.set('n', '<leader>hs', ht.hoogle.hoogle_signature, opts) -- CHANGE THIS
       			-- default_on_attach(client, bufnr)  -- if defined, see nvim-lspconfig
     		end,
   	},
})
