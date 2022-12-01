set number
set relativenumber
set tabstop=8
set mouse=a
set background=light
set cursorline
set encoding=utf-8
set nobackup
set nowritebackup
set updatetime=300
set signcolumn=yes

let data_dir=has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
" Collection of common configurations for the Nvim LSP client
Plug 'https://github.com/neovim/nvim-lspconfig'

" Completion framework
" Plug 'hrsh7th/nvim-cmp'

" LSP completion source for nvim-cmp
" Plug 'hrsh7th/cmp-nvim-lsp'

" Snippet completion source for nvim-cmp
" Plug 'hrsh7th/cmp-vsnip'

" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" NerdTree
Plug 'https://github.com/preservim/nerdtree'

" Comments
Plug 'https://github.com/tpope/vim-commentary'

" Brackets 
Plug 'https://github.com/tpope/vim-surround'

Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/mg979/vim-visual-multi'  


Plug 'https://github.com/preservim/tagbar' 

" Coc
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Latex support 
Plug 'https://github.com/lervag/vimtex'

" Themes
Plug 'https://github.com/p7g/vim-bow-wob'

" Haskell support 
Plug 'https://github.com/neovimhaskell/haskell-vim'

" fuzzy finder
Plug 'junegunn/fzf.vim'
call plug#end()

" colors and italics ???
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

colorscheme bow-wob
let g:bow_terminal_italics = 1
let g:bow_spell_undercurl = 0
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" esc in terminal
tnoremap <Esc> <C-\><C-n>

" Alt-{h,j,k,l} to navigate windows
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nmap <F3> :TagbarToggle<CR>

" filetype plugin on
filetype plugin indent on

syntax enable

let g:vimtex_view_method = 'zathura'

let g:vimtex_compiler_method = 'latexmk'

set viewoptions-=options


augroup remember_folds
  autocmd!
  autocmd BufWinLeave ?* mkview
  autocmd BufWinEnter ?* silent! loadview
augroup END

lua <<EOF
vim.api.nvim_create_autocmd('FileType', {
	pattern = { "*" },
  	callback = function(args)
    		local ft = vim.bo[args.buf].filetype
    		if ft == "haskell" then
		
      		require("spacing/four")
    		else if ft == "lua" then
      		-- do something else 
    		end
	end
})
EOF
