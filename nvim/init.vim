if 0 | endif

if &compatible
 set nocompatible               " Be iMproved
endif

filetype plugin indent on
syntax enable
"set guifont=Monac:h12
set guifont=Fira\ Code\ Retina\ 12
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

let g:indentLine_char = '│'
"where 'c' can be any ASCII character. You can also use one of ¦, ┆, │, ⎸

"let &colorcolumn=join(range(81,999),",")
set cc=80
highlight ColorColumn ctermbg=235 guibg=#1B202A
highlight Normal ctermbg=235 guibg=#171b25





"""""""""""""""""""""""
" Vim Plug
"""""""""""""""""""""""
"
call plug#begin('~/.local/share/nvim/plugged')

"plugins

"Plug 'haya14busa/incsearch.vim'
"Plug 'Shougo/denite.nvim'
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'gcmt/taboo.vim'
Plug 'Yggdroot/indentLine'
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'metakirby5/codi.vim'
Plug 'posva/vim-vue'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'calviken/vim-gdscript3'
Plug 'rustushki/JavaImp.vim'
Plug 'fatih/vim-go'
Plug 'https://github.com/luochen1990/rainbow'
Plug 'https://github.com/davisdude/vim-love-docs'
Plug 'https://github.com/alols/vim-love-efm.git'
Plug 'https://github.com/easymotion/vim-easymotion.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/mattn/emmet-vim.git'
Plug 'https://github.com/scrooloose/nerdcommenter.git'
Plug 'https://github.com/majutsushi/tagbar.git'
Plug 'https://github.com/jistr/vim-nerdtree-tabs.git'
Plug 'https://github.com/kien/ctrlp.vim'
Plug 'https://github.com/jmcomets/vim-pony'
Plug 'https://github.com/vim-scripts/taglist.vim.git'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'Shougo/unite.vim'
Plug 'mhartington/vim-typings'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'ternjs/tern_for_vim'
Plug 'vim-airline/vim-airline'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'terryma/vim-multiple-cursors'
Plug 'szw/vim-maximizer'
Plug 'Raimondi/delimitMate'
Plug 'https://github.com/othree/javascript-libraries-syntax.vim'
Plug 'https://github.com/MarcWeber/vim-addon-local-vimrc'
Plug 'neomake/neomake'
"Plug 'dense-analysis/ale'
Plug 'Shougo/vimproc.vim'
"Plug '"thirtythreeforty/lessspace.vim'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" theme
"themes
Plug 'sonph/onehalf'
Plug 'tomasiser/vim-code-dark'
Plug 'mg979/vim-studio-dark'
Plug 'ayu-theme/ayu-vim'
Plug 'https://github.com/float168/vim-colors-cherryblossom'
Plug 'hzchirs/vim-material'
Plug 'arcticicestudio/nord-vim'
Plug 'https://github.com/lu-ren/SerialExperimentsLain'
Plug 'https://github.com/dracula/vim'
Plug 'https://github.com/NewProggie/NewProggie-Color-Scheme'
Plug 'https://github.com/zcodes/vim-colors-basic'
Plug 'https://github.com/tokers/Magellan'
Plug 'https://github.com/nightsense/seabird'
Plug 'https://github.com/zcodes/vim-colors-basic'
Plug 'https://github.com/nightsense/seabird'
Plug 'https://github.com/rakr/vim-one'
Plug 'https://github.com/davidklsn/vim-sialoquent'
Plug 'https://github.com/zanglg/nova.vim'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/Konstruktionist/vim'
Plug 'https://github.com/aliou/moriarty.vim'
Plug 'https://github.com/KeitaNakamura/neodark.vim'
Plug 'https://github.com/Blevs/vim-dzo'
Plug 'https://github.com/kamwitsta/nordisk'
Plug 'https://github.com/kamwitsta/mythos'
Plug 'https://github.com/tyrannicaltoucan/vim-quantum'
Plug 'gosukiwi/vim-atom-dark'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'https://github.com/jnurmine/Zenburn.git'
Plug 'https://github.com/joshdick/onedark.vim'
Plug 'https://github.com/whatyouhide/vim-gotham'
Plug 'https://github.com/MvanDiemen/ghostbuster'
Plug 'https://github.com/easysid/mod8.vim'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/jackiehluo/vim-material'
Plug 'flazz/vim-colorschemes'
Plug 'https://github.com/jacoborus/tender.vim'
Plug 'https://github.com/muellan/am-colors'
Plug 'https://github.com/andbar-ru/vim-unicon'
Plug 'https://github.com/raphamorim/lucario'

" Initialize plugin system
call plug#end()

"""""""""""""""""""""""
"=> VIM THEMES
"""""""""""""""""""""""

set background=dark
"color Kafka
"color dzo
"color quantum
"color neodark
"color OceanicNext
"color github
"color nord
color deep-space

set termguicolors
let ayucolor="mirage"
highlight Normal ctermbg=235 guibg=#0B121C
"highlight ColorColumn ctermbg=235 guibg=#1B202A
highlight ColorColumn ctermbg=235 guibg=#171b25

hi LineNr guibg=bg
set foldcolumn=2
hi foldcolumn guibg=bg
hi VertSplit guibg=bg guifg=bg

"""""""""""""""""""""""
"=> VIM STUFF
"""""""""""""""""""""""


let g:python2_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

"nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
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
map <leader>tr :TabooRename<space>
map <leader>tx :TabooReset<cr>

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
nmap <F8> :TagbarToggle<CR>


"""""""""""""""""""""""
"=> NERDTREE
""""""""""""""""""""""

"toggle nerd tree with control-n
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "left"
"let g:NERDTreeWinPos = 'rightbelow'

"Hide object files
let NERDTreeIgnore=['.DS_Store', '\.meta$', 'node_modules', '\.pyc$', '\~$', '\.o$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$'] "ignore files in NERDTree


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
"let g:airline_theme='quantum'
let g:airline_theme='neodark'
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
"let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_working_path_mode = '0'


" Use a leader instead of the actual named binding
"nmap <leader>p :CtrlP<cr>

" Easy bindings for its various modes
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

"""""""""""""""""""""""
"=> BUFFERGATOR
"""""""""""""""""""""""

" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'

" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1

" Looper buffers
"let g:buffergator_mru_cycle_loop = 1

" Go to the previous buffer open
nmap <leader>n :BuffergatorMruCyclePrev<cr>

" Go to the next buffer open
nmap <leader>m :BuffergatorMruCycleNext<cr>

" View the entire list of buffers open
nmap <leader>bl :BuffergatorOpen<cr>

" Shared bindings from Solution #1 from earlier
nmap <leader>e :edit<space>
nmap <leader>bq :bp <BAR> bd #<cr>


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
nmap <leader>gl :silent! Glog<CR>:bot copen<CR>
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
let g:gitgutter_enabled = 0
nmap <leader>gg :GitGutterToggle<CR>
nmap <leader>ggh :GitGutterLineHighlightsToggle<CR>

"""""""""""""""""""""""
"=> MULTIPLE CURSORS
"""""""""""""""""""""""

" Disable default mappings
let g:multi_cursor_use_default_mapping=0

" Remap
let g:multi_cursor_next_key='<C-u>'
let g:multi_cursor_prev_key='<C-i>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"""""""""""""""""""""""
"=> JS LIB SYNTAX
"""""""""""""""""""""""

let g:used_javascript_libs = ''


"""""""""""""""""""""""
"=> NEOMAKE
"""""""""""""""""""""""

 "Run NeoMake on read and write operations
autocmd! BufReadPost,BufWritePost,CursorHold * Neomake
let g:neomake_javascript_eslint_maker = {
        \ 'pipe': 1,
        \ 'args': ['-f', 'compact', '--stdin', '--stdin-filename', '%:p'],
        \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
        \ '%W%f: line %l\, col %c\, Warning - %m'
        \ }

autocmd! CursorHold *.js,*.jsx,*.ts,*.tsx Neomake

let g:neomake_serialize = 1
let g:neomake_serialize_abort_on_error = 1

let g:neomake_javascript_enabled_makers = ['tslint']
"let g:neomake_cpp_enabled_makers = ['gcc']

"let g:neomake_php_enabled_makers = ['php']

"""""""""""""""""""""""
"=> ALE
"""""""""""""""""""""""

"let g:ale_fixers = {
"\   '*': ['remove_trailing_lines', 'trim_whitespace'],
"\   'javascript': ['eslint'],
"\   'typescript': ['tslint'],
"\}

"" fix on save
"let g:ale_fix_on_save = 1

"""""""""""""""""""""""
"=> GOYO
"""""""""""""""""""""""

function! s:goyo_enter()
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
    set noshowmode
    set noshowcmd
    set scrolloff=999
    Limelight
endfunction

function! s:goyo_leave()
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
    set showmode
    set showcmd
    set scrolloff=5
    "color neodark
    "color quantum
    color deep-space
    "color OceanicNext
    set termguicolors
    highlight Normal ctermbg=235 guibg=#0B121C
    hi LineNr guibg=bg
    set foldcolumn=2
    hi foldcolumn guibg=bg
    hi VertSplit guibg=bg guifg=bg
    "let ayucolor="mirage"
    "colorscheme ayu
    let g:airline_powerline_fonts = 1
    let g:airline_theme='neodark'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#fnamemod = ':t'
    Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
nmap <leader>z :Goyo<cr>


"""""""""""""""""""""""
"=> LiteDFM
"""""""""""""""""""""""
"nnoremap <leader>z :LiteDFMToggle<cr>

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
	\'coc-css', 'coc-json', 'coc-python', 'coc-yaml',
	\'coc-omnisharp', 'coc-emmet', 'coc-html', 'coc-vetur',
	\'coc-ultisnips', 'coc-gocode', 'coc-xml', 'coc-snippets',
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
"=> Denite
"""""""""""""""""""""""

"call denite#custom#var('file/rec', 'command', ['rg', '--hidden', '--files', '--glob', '!.git'])
""
"call denite#custom#var('grep', 'command', ['rg'])
"call denite#custom#var('grep', 'default_opts', ['--smart-case', '--follow', '--hidden', '--vimgrep', '--heading'])
"call denite#custom#var('grep', 'recursive_opts', [])
"call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
"call denite#custom#var('grep', 'separator', ['--'])
"call denite#custom#var('grep', 'final_opts', [])

"call denite#custom#map(
		  "\ 'insert',
		  "\ '<Down>',
		  "\ '<denite:move_to_next_line>',
		  "\ 'noremap'
		  "\)
"call denite#custom#map(
		  "\ 'insert',
		  "\ '<Up>',
		  "\ '<denite:move_to_previous_line>',
		  "\ 'noremap'
		  "\)

"" Remove date from buffer list
"call denite#custom#var('buffer', 'date_format', '')

"" Custom options for Denite
""   auto_resize             - Auto resize the Denite window height automatically.
""   prompt                  - Customize denite prompt
""   direction               - Specify Denite window direction as directly below current pane
""   winminheight            - Specify min height for Denite window
""   highlight_mode_insert   - Specify h1-CursorLine in insert mode
""   prompt_highlight        - Specify color of prompt
""   highlight_matched_char  - Matched characters highlight
""   highlight_matched_range - matched range highlight
"let s:denite_options = {'default' : {
"\ 'auto_resize': 1,
"\ 'direction': 'rightbelow',
"\ 'winminheight': '10',
"\ 'highlight_mode_insert': 'Visual',
"\ 'highlight_mode_normal': 'Visual',
"\ 'prompt_highlight': 'Function',
"\ 'highlight_matched_char': 'Function',
"\ 'highlight_matched_range': 'Normal'
"\ }}

"" Loop through denite options and enable them
"function! s:profile(opts) abort
  "for l:fname in keys(a:opts)
    "for l:dopt in keys(a:opts[l:fname])
      "call denite#custom#option(l:fname, l:dopt, a:opts[l:fname][l:dopt])
    "endfor
  "endfor
"endfunction

"call s:profile(s:denite_options)

"nmap _ :DeniteProjectDir -split=floating -winrow=1 file/rec grep:::!<CR>
