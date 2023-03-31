dprint('autoload')

-- vim.api.nvim_create_autocmd('FileType', {
--   	pattern = { "*" },
--   	callback = function(args)
--     		local ft = vim.bo[args.buf].filetype
--     			if ft == 'haskell' then
-- 				set.expandtab = true
-- 			end
--   		end 
-- })

-- vim.api.nvim_create_autocmd('RememberFolds', {
-- 	callback = function(args)
-- 		vim.cmd([[	
-- 			augroup remember_folds
--    			autocmd!
--    			autocmd BufWinLeave ?* mkview
--    			autocmd BufWinEnter ?* silent! loadview
-- 			augroup END
-- 		]])
-- 	end})
