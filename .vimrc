" Ivan Dmitrievsky
" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'L9'
Plugin 'flazz/vim-colorschemes'
Plugin 'mhinz/vim-startify'
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plugin 'sjl/gundo.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-surround'
Plugin 'Yggdroot/indentLine'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-scripts/YankRing.vim'

call vundle#end()
filetype plugin indent on

" Colors
colorscheme jellybeans
syntax enable " enable syntax processing

" Misc
set modelines=0
set wrap
set formatoptions=rn1
set colorcolumn=80
set encoding=utf-8

" Spaces & Tabs
set tabstop=2 " number of visual spaces per TAB
set softtabstop=2 " number of spaces in tab when editing

" UI Layout
set relativenumber
set scrolloff=999
set showmode
set showcmd
set laststatus=2 " always show status line
set autoindent
set ttyfast " improves terminal in case fast connection
set ruler " show cursor position
set backspace=indent,eol,start " normal backspace behavior
set cursorline " highlight current line
filetype indent on " load filetype-specific indent files
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when we need to.
set showmatch " highlight matching [{()}]

" Searching
" common regex syntax
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase " ignore case only when query is all lowercase
set gdefault " applies substitutions globally on lines
set incsearch " search as characters are entered
set showmatch " briefly show a bracket match
set hlsearch " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level

" Movement
" use the right commands
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" highlight last inserted text
nnoremap <leader>v V`]
" split movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Leader Shortcuts
let mapleader=","       " leader is comma
" jk is escape
inoremap jj <esc>
" toggle gundo
nnoremap <leader>u :GundoToggle<CR>
" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
" save session
nnoremap <leader>s :mksession<CR>
" open ag.vim
nnoremap <leader>a :Ag
" remove trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" open vertical split
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>R :RainbowParenthesesToggle<CR>

" UltiSnips
let g:UltiSnipsExpandrigger        = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" AirLine
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#bufferline#enabled = 1

let g:multi_cursor_use_default_mapping=0

" multiple-cursors
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" MacVim
if has('gui_running')
	set guifont=Monaco:h13
	set noantialias
endif
au FocusLost * :wa

