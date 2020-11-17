if 0 | endif

if &compatible
 set nocompatible               " Be iMproved
endif

filetype plugin indent on
syntax enable
"set guifont=Monac:h12
set guifont=Fira\ Code\ Retina\ 11
syntax on

set hidden
" Better display for messages
set cmdheight=4
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes
set list listchars=tab:▸\ ,trail:·,precedes:←,extends:→

" Set indentation line char
let g:indentLine_char = '│'
"where 'c' can be any ASCII character. You can also use one of ¦, ┆, │, ⎸

" Show  80 char line
"set cc=80

set lazyredraw


" highlight current line number
hi clear CursorLine
augroup CLClear
    autocmd! ColorScheme * hi clear CursorLine
augroup END
set cursorline

" Quick edit
nmap <leader>v :edit<space>

" Close current file buffer
nmap <leader>bq :bp <BAR> bd #<cr>


"hi LineNr guibg=bg
"set foldcolumn=2
"hi foldcolumn guibg=bg
"hi Normal guibg=#1e1e1e

"""""""""""""""""""""""
"=> Vim Plug
"""""""""""""""""""""""
"
call plug#begin('~/.local/share/nvim/plugged')

"plugins
Plug 'gcmt/taboo.vim'
Plug 'Shougo/vimproc.vim'
Plug 'luochen1990/rainbow'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'mhartington/vim-typings'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'szw/vim-maximizer'
Plug 'Raimondi/delimitMate'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

""""""""""""""""""""""""
" language plugins
""""""""""""""""""""""""

" godot
Plug 'calviken/vim-gdscript3'

" golang
Plug 'fatih/vim-go'

" c#
Plug 'OmniSharp/omnisharp-vim'


"""""""""""""""""""""""
"themes
"""""""""""""""""""""""
Plug 'https://github.com/dracula/vim'


" Initialize plugin system
call plug#end()

"""""""""""""""""""""""
"=> VIM THEMES
"""""""""""""""""""""""

set background=dark
color dracula

set termguicolors
" Hide vertical split line
" hi VertSplit guibg=bg guifg=bg


"""""""""""""""""""""""
"=> VIM STUFF
"""""""""""""""""""""""


let g:python2_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

vnoremap <C-r> "hy:%s/<C-r>h//g<left><left>
tnoremap <Esc> <C-\><C-n>

" Fast window resizing with +/- keys (horizontal); / and * keys (vertical)
if bufwinnr(1)
  map <kPlus> <C-W>+
  map <kMinus> <C-W>-
  map <kDivide> <c-w><
  map <kMultiply> <c-w>>
endif

"Enable the mouse
set mouse=a
"Set utf8 as standard encoding
set encoding=UTF-8

"Use Unix as the standard file ype
set ffs=unix,dos,mac

"Show line numbers
set number

"set tabwidth
set tabstop=4
set shiftwidth=4

set nowrap
"set colorcolumn=80

"Enable smarttab
set smarttab

set ai "Auto indent
set si "Smart indent

"Use spaces instead of tab
set expandtab

"Enable filetype plugins
filetype plugin on
filetype indent on
set nocompatible

"auto read external file changes
set autoread

"set leader key to ,
let mapleader=","
let g:mapleader = ","

"Fast saving
nmap <leader>w :w!<cr>
nmap <leader>wa :wa!<cr>

"Fast Quit
nmap <leader>q :q<cr>
nmap <leader>qa :qa<cr>

"Fast Write Quit
nmap <leader>wq :wq<cr>
nmap <leader>wqa :wqa<cr>

"Clear trailing white space automatically when exit insert mode
"autocmd! BufReadPost,BufWritePost * :%s/\s\+$//e<cr>
autocmd BufWritePre * :%s/\s\+$//e


"Clear trailing white space
nmap <leader>ss :%s/\s\+$//e<cr>

"Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

"A buffer becomes hidden when it is abandoned
set hid

"Configure backspace to act as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"Ignore case when searching
set ignorecase

"Enable smartcase
set smartcase

"Highlight search results
"set hlsearch
set hls!

"Make search act like search in modern browsers
set incsearch


" Smart way to move between windows
map <S-j> <C-W>j
map <S-k> <C-W>k
map <S-h> <C-W>h
map <S-l> <C-W>l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

"Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" next error
map <M-l> :lnext<cr>

"Useful mappings for managing tabs
map <leader>tn :TabooOpen<space>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>tk :tabnext<cr>
map <leader>tj :tabprevious<cr>
map <leader>tx :TabooReset<cr>
map <leader>tr :TabooRename<space>

"Opens a new tab with the current buffer's path
"Super useful when editing files in the same directory
"map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
map <leader>te :tabedit<space>
map <leader>vs :vsplit<space>
map <leader>sp :split<space>
" Close all buffers
map <leader>bd :bufdo bd<cr>

"Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

"Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"Enable folding
set foldmethod=indent
set foldlevel=99
set nofoldenable

"Enable folding with the spacebar
nnoremap <space> za

" Netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0



"""""""""""""""""""""""
"=> CONTROL-P
"""""""""""""""""""""""

" Setup default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site|node_modules)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in
" version
" control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_working_path_mode = '0'


" Use a leader instead of the actual named binding
nmap <leader>p :CtrlP<cr>

" Easy bindings for its various modes
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>


"""""""""""""""""""""""
"=> BUFFERGATOR
"""""""""""""""""""""""

" Use the top part of the screen
let g:buffergator_viewport_split_policy = 'T'

" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1

" Looper buffers
let g:buffergator_mru_cycle_loop = 1

" Go to the previous buffer open
nmap <leader>n :BuffergatorMruCyclePrev<cr>

" Go to the next buffer open
nmap <leader>m :BuffergatorMruCycleNext<cr>

" View the entire list of buffers open
nmap <leader>bl :BuffergatorOpen<cr>


"""""""""""""""""""""""
"=> FUGITIVE
"""""""""""""""""""""""

" fugitive git bindings
nmap <leader>ga :Git add %:p<CR><CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gc :Gcommit -v -q<CR>
nmap <leader>gt :Gcommit -v -q %:p<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>ge :Gedit<CR>
nmap <leader>gr :Gread<CR>
nmap <leader>gw :Gwrite<CR><CR>
nmap <leader>gl :silent! Glog <CR>:bot copen<CR>
nmap <leader>gp :Ggrep<Space>
nmap <leader>gm :Gmove<Space>
nmap <leader>gb :Git branch<Space>
nmap <leader>go :Git checkout<Space>
nmap <leader>gps :!git push<CR>
nmap <leader>gpl :!git pull<CR>
nmap <leader>gx :Git reset HEAD %:p<CR>
nmap <leader>gbl :Gblame<CR>


"""""""""""""""""""""""
"=> GIT GUTTER
"""""""""""""""""""""""
let g:gitgutter_enabled = 1
nmap <leader>gg :GitGutterToggle<CR>
nmap <leader>ggh :GitGutterLineHighlightsToggle<CR>

"""""""""""""""""""""""
"=> GOYO
"""""""""""""""""""""""

function! s:goyo_enter()
    " Hide tmux output
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z

    set noshowmode
    set noshowcmd
    set scrolloff=999

    " Turn on limelight
    Limelight
endfunction

function! s:goyo_leave()
    " Show tmux output
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z

    set showmode
    set showcmd
    set scrolloff=5

    " Set bg color
    color darcula
    set termguicolors
    hi Normal guibg=#1e1e1e

    " Hide vertical split line
    hi VertSplit guibg=bg guifg=bg

    " Turn off limelight
    Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
nmap <leader>z :Goyo<cr>
