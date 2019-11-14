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
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'OrangeT/vim-csharp'
Plug 'jtratner/vim-flavored-markdown'
Plug 'Shougo/vimproc.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'gregsexton/gitv', {'on': ['Gitv']}
Plug 'vitalk/vim-simple-todo'
Plug 'severin-lemaignan/vim-minimap'
Plug 'benmills/vimux'
Plug 'janko/vim-test'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'gcmt/taboo.vim'
Plug 'Yggdroot/indentLine'
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'posva/vim-vue'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'calviken/vim-gdscript3'
Plug 'fatih/vim-go'
Plug 'luochen1990/rainbow'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'kien/ctrlp.vim'
Plug 'jmcomets/vim-pony'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'mhartington/vim-typings'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'ternjs/tern_for_vim'
Plug 'vim-airline/vim-airline'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'szw/vim-maximizer'
Plug 'Raimondi/delimitMate'
Plug 'https://github.com/othree/javascript-libraries-syntax.vim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

"themes
Plug 'markvincze/panda-vim'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'mg979/vim-studio-dark'
Plug 'arcticicestudio/nord-vim'
Plug 'https://github.com/dracula/vim'
Plug 'https://github.com/nightsense/seabird'
Plug 'https://github.com/rakr/vim-one'
Plug 'https://github.com/zanglg/nova.vim'
Plug 'https://github.com/Konstruktionist/vim'
Plug 'https://github.com/aliou/moriarty.vim'
Plug 'https://github.com/KeitaNakamura/neodark.vim'
Plug 'https://github.com/Blevs/vim-dzo'
Plug 'https://github.com/kamwitsta/nordisk'
Plug 'https://github.com/tyrannicaltoucan/vim-quantum'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'https://github.com/jacoborus/tender.vim'

" Initialize plugin system
call plug#end()

"""""""""""""""""""""""
"=> VIM THEMES
"""""""""""""""""""""""

set background=dark
"color nord
"color dzo
"color quantum
"color neodark
"color petrel
"color moriarty
"color tender
"color nova
"color spacegray
color spacemacs-theme
"color space-vim-dark
"color deep-space
"color dracula
"color vsdark
"color codedark
"color one
hi Normal guibg=#1e1e1e

set termguicolors
" Hide vertical split line
hi VertSplit guibg=bg guifg=bg


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

"python with virtualenv support
python << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
 project_base_dir = os.environ['VIRTUAL_ENV']
 activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
 execfile(activate_this, dict(__file__=activate_this))
EOF


"""""""""""""""""""""""
"=> NERDCOMMENTOR
"""""""""""""""""""""""


"""""""""""""""""""""""
"=> TAGBAR
"""""""""""""""""""""""
nmap <F8> :TagbarOpenAutoClose<CR>
nmap <C-F8> :TagbarToggle<CR>
let g:tagbar_type_typescript = {
  \ 'ctagstype': 'typescript',
  \ 'kinds': [
    \ 'c:classes',
    \ 'n:modules',
    \ 'f:functions',
    \ 'v:variables',
    \ 'v:varlambdas',
    \ 'm:members',
    \ 'i:interfaces',
    \ 'e:enums',
  \ ]
  \ }
"let g:tagbar_type_typescript = {
  "\ 'ctagsbin' : 'tstags',
  "\ 'ctagsargs' : '-f-',
  "\ 'kinds': [
    "\ 'e:enums:0:1',
    "\ 'f:function:0:1',
    "\ 't:typealias:0:1',
    "\ 'M:Module:0:1',
    "\ 'I:import:0:1',
    "\ 'i:interface:0:1',
    "\ 'C:class:0:1',
    "\ 'm:method:0:1',
    "\ 'p:property:0:1',
    "\ 'v:variable:0:1',
    "\ 'c:const:0:1',
  "\ ],
  "\ 'sort' : 0
"\ }

"""""""""""""""""""""""
"=> NERDTREE
""""""""""""""""""""""

"toggle nerd tree with control-n
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "left"
"let g:NERDTreeWinPos = 'rightbelow'

"Hide object files
let NERDTreeIgnore=[
   \'.DS_Store', '\.meta$', 'node_modules', '\.pyc$',
   \'\~$', '\.o$', '^tags$', '\.git$[[dir]]',
   \'\.idea$[[dir]]', '\.sass-cache$',
   \] "ignore files in NERDTree


let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeStatusline = ''

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"""""""""""""""""""""""
"=> VIM-DEVICONS
"""""""""""""""""""""""

let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_vimfiler = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_ctrlp = 1
let g:webdevicons_enable_flagship_statusline = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:webdevicons_enable_denite = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderPatternMatching = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
let WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1

"""""""""""""""""""""""
"=> EMMET CODING
"""""""""""""""""""""""

"expand with control-k
let g:user_emmet_expandabbr_key = '<c-k>'

"""""""""""""""""""""""
"=> DJANGO STUFF (vim-pony)
"""""""""""""""""""""""

map <leader>da :Dadmin<space>
map <leader>du :Durls<space>
map <leader>dv :Dviews<space>
map <leader>ds :Dsettings<space>
map <leader>dm :Dmodels<space>
map <leader>dt :Dtests<space>

"""""""""""""""""""""""
"=> REACTJS STUFF
"""""""""""""""""""""""

"Allow JSX in normal JS files
let g:jsx_ext_required = 0

"""""""""""""""""""""""
"=> VIM-AIRLINE
"""""""""""""""""""""""

set laststatus=2
let g:airline_powerline_fonts = 1
"let g:airline_theme='kolor'
"let g:airline_theme='papercolor'
"let g:airline_theme='cool'
"let g:airline_theme='laederon'
let g:airline_theme='quantum'
"let g:airline_theme='neodark'
"let g:airline_theme='codedark'
"let g:airline_theme='kalisi'
"let g:airline_theme='dzo'
"let g:airline_theme='nord'

" Enable buffer list
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

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
"=> JS LIB SYNTAX
"""""""""""""""""""""""

let g:used_javascript_libs = ''


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
    color spacemacs-theme
    set termguicolors
    hi Normal guibg=#1e1e1e

    " Hide vertical split line
    hi VertSplit guibg=bg guifg=bg

    " Setup airline
    let g:airline_powerline_fonts = 1
    let g:airline_theme='neodark'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#fnamemod = ':t'

    " Turn off limelight
    Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
nmap <leader>z :Goyo<cr>



"""""""""""""""""""""""
"=> Ultisnips
"""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<leader>h"
"let g:UltiSnipsJumpForwardTrigger="\<C-l>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetsDir = "~/.config/nvim/ultisnips/UltiSnips"


"""""""""""""""""""""""
"=> Coc.nvim
"""""""""""""""""""""""

let g:coc_global_extensions = [
	\'coc-emoji', 'coc-eslint', 'coc-prettier',
	\'coc-tsserver', 'coc-tslint', 'coc-tslint-plugin',
	\'coc-css', 'coc-json', 'coc-python', 'coc-yaml', 'coc-java',
	\'coc-omnisharp', 'coc-emmet', 'coc-html', 'coc-vetur',
	\'coc-ultisnips', 'coc-gocode', 'coc-xml', 'coc-snippets',
    \'coc-phpls', 'coc-go'
\]


" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
"inoremap <silent><expr> <TAB>
	  "\ pumvisible() ? "\<C-n>" :
	  "\ <SID>check_back_space() ? "\<TAB>" :
	  "\ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <silent><expr> <TAB>
	  \ pumvisible() ? coc#_select_confirm() :
	  \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
	  \ <SID>check_back_space() ? "\<TAB>" :
	  \ coc#refresh()

let g:coc_snippet_next = '<tab>'

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

"""""""""""""""""""""""
"=> FZF
"""""""""""""""""""""""
if has("nvim")
  au TermOpen * tnoremap <Esc> <c-\><c-n>
  au FileType fzf tunmap <Esc>
endif

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': '10new' }

" Customize fzf colors to match your color scheme
"let g:fzf_colors =
"\ { 'fg':      ['fg', 'Normal'],
  "\ 'bg':      ['bg', 'Normal'],
  "\ 'hl':      ['fg', 'Comment'],
  "\ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  "\ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  "\ 'hl+':     ['fg', 'Statement'],
  "\ 'info':    ['fg', 'PreProc'],
  "\ 'border':  ['fg', 'Ignore'],
  "\ 'prompt':  ['fg', 'Conditional'],
  "\ 'pointer': ['fg', 'Exception'],
  "\ 'marker':  ['fg', 'Keyword'],
  "\ 'spinner': ['fg', 'Label'],
  "\ 'header':  ['fg', 'Comment'] }

"nnoremap <silent> <leader>b :call Fzf_dev()<CR>
"nmap <C-p> :FZF<cr>
nmap <C-f> :Rg<cr>

" ripgrep
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
  set grepprg=rg\ --vimgrep
  command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif

" Files + devicons
function! Fzf_dev()
  let l:fzf_files_options = '--preview "bat --style=numbers,changes --color always {2..-1} | head -'.&lines.'"'

  function! s:files()
    "let l:files = split(system($FZF_DEFAULT_COMMAND), '\n')
    return s:prepend_icon(l:files)
  endfunction

  function! s:prepend_icon(candidates)
    let l:result = []
    for l:candidate in a:candidates
      let l:filename = fnamemodify(l:candidate, ':p:t')
      let l:icon = WebDevIconsGetFileTypeSymbol(l:filename, isdirectory(l:filename))
      call add(l:result, printf('%s %s', l:icon, l:candidate))
    endfor

    return l:result
  endfunction

  function! s:edit_file(item)
    let l:pos = stridx(a:item, ' ')
    let l:file_path = a:item[pos+1:-1]
    execute 'silent e' l:file_path
  endfunction

  call fzf#run({
        \ 'source': <sid>files(),
        \ 'sink':   function('s:edit_file'),
        \ 'options': '-m ' . l:fzf_files_options,
        \ 'down':    '40%' })
endfunction


"""""""""""""""""""""""
"=> Vim Test
"""""""""""""""""""""""
" these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
nmap <silent> tn :TestNearest<CR>
nmap <silent> tf :TestFile<CR>
nmap <silent> ts :TestSuite<CR>
nmap <silent> tl :TestLast<CR>
nmap <silent> tv :TestVisit<CR>
let test#strategy = "vimux"

"""""""""""""""""""""""
"=> Simple-TODO
"""""""""""""""""""""""
let g:simple_todo_tick_symbol='✔'

"""""""""""""""""""""""
"=> Rainbow Brackets
"""""""""""""""""""""""
let g:rainbow_active = 1

"""""""""""""""""""""""
"=> Git v
"""""""""""""""""""""""
let g:Gitv_WipeAllOnClose = 1
let g:Gitv_OpenHorizontal= 1
nmap <leader>gv :Gitv<CR>

"""""""""""""""""""""""
"=> NerdTree Git
"""""""""""""""""""""""
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✦",
    \ "Staged"    : "✚",
    \ "Untracked" : "￭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "＝",
    \ "Deleted"   : "‼",
    \ "Dirty"     : "⧺",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"}
