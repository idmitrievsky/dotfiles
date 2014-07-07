set nocompatible

" Vundle setup

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'airblade/vim-gitgutter'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'L9'
Bundle 'flazz/vim-colorschemes'
Bundle 'mhinz/vim-startify'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'
Bundle 'tpope/vim-commentary'
Bundle 'kien/ctrlp.vim'
Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'bling/vim-bufferline'
Bundle 'majutsushi/tagbar'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'tpope/vim-repeat'
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'SirVer/ultisnips'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-surround'
Bundle 'chriskempson/base16-vim'

""""""""""""""""""""""""""""""""""""""""" ~Vundle

" Params setup

syntax on
filetype plugin indent on
set title
set showcmd
set scrolloff=999
set list
if version >= 700
	set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:×
else
	set listchars=tab:»\ ,trail:·,extends:>,precedes:<,nbsp:_
endif
set wrap
set linebreak
if has("linebreak")
	let &sbr = nr2char(8618).' '
endif
set autoindent
set smartindent
set shiftwidth=4
set encoding=utf-8
set showmode
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set number
set undofile
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set noerrorbells
set visualbell
colorscheme base16-ocean
set background=dark
if has('gui_running')
  set guifont=CosmicSansNeueMono:h15
endif

"" plugins
let g:UltiSnipsExpandrigger        = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:SuperTabMappingForward  = '<s-tab>'
let g:SuperTabMappingBackward = '<tab>'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
let g:tagbar_sort = 0
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment
let g:tagbar_iconchars         = ['▸', '▾']

let g:syntastic_error_symbol   = 'x'
let g:syntastic_warning_symbol = '?'

let g:ctrlp_working_path_mode = 0

""""""""""""""""""""""""""""""""""""""""" ~Params

" Leader maps

let mapleader = ","

"" better regexp
nnoremap / /\v
vnoremap / /\v
"" autosave
au FocusLost * :wa
"" leave i-mode
inoremap jj <ESC>

"" find and replace in all open buffers
function! Replace()
    let s:word = input("Replace " . expand('<cword>') . " with:")
    :exe 'bufdo! %s/\<' . expand('<cword>') . '\>/' . s:word . '/gce'
    :unlet! s:word
endfunction
map <Leader>r :call Replace()<CR>

"" go fullscreen
function! ToggleFullScreen()
    if &fu == 1
	set nofu
    else
	set fu
    endif
endfunction
map <Leader>gb :call ToggleFullScreen()<CR>

"" ctrl-p plugin
nmap <Leader>p :CtrlP<CR>
nmap <Leader>b :CtrlPBuffer<CR>
"" tagbar plugin
nmap <Leader>t :TagbarToggle<CR>

"" open the .vimrc in a new tab
nmap <leader>v <C-w><C-v><C-l>:e $MYVIMRC<cr>

"" create a new window relative to the current one
nmap <Leader><left>  :leftabove  vnew<CR>
nmap <Leader><right> :rightbelow vnew<CR>
nmap <Leader><up>    :leftabove  new<CR>
nmap <Leader><down>  :rightbelow new<CR>

"" fix trailing white space
map <leader>ts :%s/\s\+$//e<CR>

"" swap two buffers with ctrl-p
map <leader>s  ,b<CR>

"" change case to uppercase
nnoremap <Leader>u gUiw
inoremap <Leader>u <esc>gUiwea

"" new vertical split
map <Leader>w <C-w>v<C-w>w

"" clear the search highlight in N-mode
nnoremap <silent> <Leader>c :nohlsearch<CR><Esc>

""""""""""""""""""""""""""""""""""""""""" ~Params

" Regular maps

"" search matches are always in center
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

"" navigate through wrapped lines
noremap j gj
noremap k gk

"" open file under cursor in a new vertical split
nmap gf :vertical wincmd f<CR>

"" copy indented line without spaces
nnoremap ,y ^yg_"_dd
"" switch splits
" nmap <C-h> <C-W>h
nmap H <C-W>h
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
" nmap <C-l> <C-W>l
nmap L <C-W>l
