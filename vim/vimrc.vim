syntax on
let mapleader=","
set nocompatible
set wildmenu
set noerrorbells
set dir=/tmp/
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set showmatch
set relativenumber
set nowrap
set smartcase
set hlsearch
"nnoremap <C-l> :nohl<CR><C-l>:echo "Search Cleared"<CR>
set incsearch
set listchars=tab:\|\\,eol:\$,trail:~,extends:>,precedes:<,nbsp:!,space:·
"set showbreak=\\
nnoremap <leader><tab> :set list!<cr>
"set pastetoggle=<F2>
"set colorcolumn=80
nnoremap  <leader><space> :so ~/.vimrc<cr>
set number
" nnoremap n nzzzv
" noremap N Nzzzv
" highlight ColorColumn ctermbg=0 guibg=lightblue
set nrformats=
nnoremap vv 0v$
set foldmethod=indent
nnoremap <space> za
"Open all folds by ,f
nnoremap <leader>f zR 
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>h gT 
nnoremap <leader>l gt 
nnoremap <leader>p <C-w><C-w>
" File and Window Management
" ,w for write in normal mode and insert mode    
	inoremap <leader>w <Esc>:w<CR>
	nnoremap <leader>w :w<CR>

" ,q for quit
	inoremap <leader>q <ESC>:q<CR>
	nnoremap <leader>q :q<CR>
",x close after saving work 
	inoremap <leader>x <ESC>:x<CR>
	nnoremap <leader>x :x<CR>
" ,e for explorer ,t for new tab explorer    ,v save and explore in vsplit ,s saves and opens explorer in that split
	nnoremap <leader>e :Ex<CR>
	nnoremap <leader>t :tabnew<CR>:Ex<CR>
	nnoremap <leader>v :vsplit<CR>:w<CR>:Ex<CR>
	nnoremap <leader>s :split<CR>:w<CR>:Ex<CR>

" Return to the same line you left off at
	augroup line_return
		au!
		au BufReadPost *
			\ if line("'\"") > 0 && line("'\"") <= line("$") |
			\	execute 'normal! g`"zvzz' |
			\ endif
	augroup END
	
" Auto load
	" Triger `autoread` when files changes on disk
	" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
	" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
	autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
	set autoread
	" Notification after file change
	" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
	autocmd FileChangedShellPost *
	  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None


call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
" Plug 'vim-scripts/ReplaceWithRegister'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'
" Plug 'tpope/vim-fugitive'
" Plug 'altercation/vim-colors-solarized'
Plug 'kana/vim-textobj-user'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'christoomey/vim-system-copy'



call plug#end()

colorscheme default 
set background=dark
set showcmd
