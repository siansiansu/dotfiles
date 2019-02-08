"    ___    __    _______  ___          _    ________  ___   __________  _   __________________
"   /   |  / /   / ____/ |/ ( )_____   | |  / /  _/  |/  /  / ____/ __ \/ | / / ____/  _/ ____/
"  / /| | / /   / __/  |   /|// ___/   | | / // // /|_/ /  / /   / / / /  |/ / /_   / // / __  
" / ___ |/ /___/ /___ /   |  (__  )    | |/ // // /  / /  / /___/ /_/ / /|  / __/ _/ // /_/ /  
"/_/  |_/_____/_____//_/|_| /____/     |___/___/_/  /_/   \____/\____/_/ |_/_/   /___/\____/   
"                                                                                              
"
" Min-Sian (Alex) Su <minsiansu@gmail.com>
" Fork me on GITHUB https://github.com/siansiansu/AlexSu.vim     
"
" read https://github.com/siansiansu/AlexSu.vim/blob/master/README.md for more info.  
" Copyright (c) 2018 Alex Su, and licensed under MIT:
" https://opensource.org/licenses/MIT.

" Table of Contents
"""""""""""""""""""""""""""""""""""
"" 1. General Settings
""" 1.1 Autocomplete
""" 1.2 Backups
""" 1.3 Colors
""" 1.4 Editing
""" 1.5 Font
""" 1.6 Files
""" 1.7 Folding
""" 1.8 Hightlight
""" 1.9 Display
""" 1.10 Search
""" 1.11 Status line
""" 1.12 User Interface
""" 1.13 Word Wrap
""" 1.14 Window and Tabs
""" 1.15 Warnings

""""""""""""""""""""""""""
"" 2. Configurations
""" 2.1 General Config
""" 2.2 Autocmd

""""""""""""""""""""""""""
"" 3. Keybindings
""" 3.1 Mapleader
""" 3.2 Cut, copy and paste
""" 3.3 Splitting

""""""""""""""""""""""""""
"" 4. Plugins
""" 4.1 Autocomplete
""" 4.2 Displaying
""" 4.3 Editing
""" 4.4 Files
""" 4.5 Git
""" 4.6 Highlighting
""" 4.7 Linting
""" 4.8 Markdown
""" 4.9 Python
""" 4.10 R-language
""" 4.11 Searching
""" 4.12 User Interface

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 1. General Settings
""" 1.1 Autocomplete
set completeopt=longest,menu          " Only insert the longest common text of the matches
set pumheight=10                      " Determines the maximum number of items to show in the popup menu
set wildmenu                          " Wild char completion menu
set wildchar=<TAB>                    " Start wild expansion in the command line using <TAB>

""" 1.2 Backups
set history=50                        " Keep 50 lines of command line history
set nobackup                          " No *~ backup files
set nowritebackup                     " Do not make a backup before overwriting a file
set nowrapscan                        " Do not searche wrap around the end of the file
set noswapfile                        " Do not use a swapfile for the buffer

""" 1.3 Colors
set background=dark                   " Dark background
set t_Co=256                          " 256 color mode
set termguicolors                     " Use true color in the terminal
colorscheme one                       " Colorschemes

""" 1.4 Editing
set backspace=eol,start,indent        " Controlling What the Backspace Key Does
set timeoutlen=500                    " The time in milliseconds that is waited for a key code 
set expandtab                         " Use the appropriate number of spaces to insert a <Tab>
set autoindent                        " Copy indent from current line when starting a new line
set copyindent                        " copy the previous indentation on autoindenting
set shiftwidth=4                      " Number of spaces to use for each step of indent
set tabstop=4                         " Number of spaces that a <Tab> in the file counts for
set textwidth=79                      " Set the text width
set scrolloff=7                       " No scroll offset
set clipboard=unnamedplus             " Yank to the system register (*) by default

""" 1.5 Font
set encoding=UTF-8                    " Set default encoding to UTF-8

if has('gui_running')                 " Font type and size for the GUI version of Vim
      set guifont=Fira\ Code\ Retina\ 20 
  endif

""" 1.6 Files
set autoread                          " Auto read when file is changed from outside
filetype on                           " Enable filetype detection
filetype indent on                    " Enable filetype-specific indenting
filetype plugin on                    " Enable filetype-specific plugins

""" 1.7 Folding
set foldnestmax=3                     " Sets the maximum nesting of folds
set foldmethod=syntax                 " The kind of folding
set foldenable                        " Code folding
set foldcolumn=1                      " Add a bit extra margin to the left

""" 1.8 Hightlight
set cursorline                        " Highlight the screen line of the cursor
set cursorcolumn
set showmatch                         " Cursor shows matching ) and }
syntax on                             " Syntax highlight

""" 1.9 Display
set ruler                             " Shows line number and column
set rulerformat=%l\:%c                " Better ruler format
set number                            " Display line numbers
" set colorcolumn=80                  " Display a ruler at a specific line
set list                              " Show hidden characters

""" 1.10 Search
set wildignore=*.o,*~,*.pyc           " Ignore these files while expanding wild chars
set fillchars=stl:\ ,stlnc:\ ,vert:\ ,fold:\ ,diff:\  " Hide horizontal line between windows 
set hlsearch                          " Search highlighting
set incsearch                         " Incremental search
set ignorecase                        " Ignore case when searching
set smartcase                         " Ignore case if search pattern is all lowercase,case-sensitive otherwise
set magic

""" 1.11 Status line
set laststatus=2                      " Open status line
set showmode                          " Show current mode

""" 1.12 User Interface
set nocompatible                      " Make sure Vim is not in compatible mode
set mouse=a                           " Enable the use of the mouse
set lazyredraw                        " Don't redraw while executing macros 

""" 1.13 Word Wrap
set linebreak                         " Make Vim break lines without breaking words
set wrap                              " Line wrapping
set formatoptions+=r

""" 1.14 Window and Tabs
set splitright                        " Put the new splited window right of the current one
set tabpagemax=100                    " Maximum number of tab pages
set hidden                            " Buffer becomes hidden when it is |abandon|ed 
set smarttab                          " Insert tabs on the start of a line according to context

""" 1.15 Warnings
set noerrorbells                      " No annoying sound on errors
set novisualbell                      " No visual bell
set t_vb=                             " No beep or flash

" -----------------------------------------------------------------------------
"" 2. Configurations
""" 2.1 General config
let pyindent_open_paren=0                           " fix the offical python indent
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:python3_host_prog = '/Users/alexsu/.pyenv/shims/python3'


"" 2.2 Autocmd
" return to last edit position when opening files
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line('$') |
\   exe "normal! g`\"" |
\ endif

" ,1 ,2 ,3: go specific tab
for i in range(1, 9)
    exec 'noremap <Leader>'.i.' '.i.'gt'
endfor

" -----------------------------------------------------------------------------
"" 3. Keybinding
""" 3.1 Mapleader
let mapleader = "\<Space>"

""" 3.2 Cut, copy and paste
nnoremap <leader>p "+p
nnoremap <leader>P "+P
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

""" 3.3 Splitting
noremap <silent> <Leader>v :vsplit<CR>
noremap <silent> <Leader>h :split<CR>

" -----------------------------------------------------------------------------
"" 4. Plugins
call plug#begin('~/.vim/plugged')

""" 4.1 Autocomplete
Plug 'zchee/deoplete-jedi'                                        " https://github.com/zchee/deoplete-jedi

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'  }  " https://github.com/Shougo/deoplete.nvim
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'                                          " https://github.com/roxma/nvim-yarp
  Plug 'roxma/vim-hug-neovim-rpc'                                 " https://github.com/roxma/vim-hug-neovim-rpc
endif
let g:deoplete#enable_at_startup = 1
let b:deoplete_disable_auto_complete=1
let g:deoplete_disable_auto_complete=1
let g:deoplete#sources = {}

""" 4.2 Displaying
Plug 'Yggdroot/indentLine'                                        " https://github.com/Yggdroot/indentLine
let g:indentLine_color_term = 239
let g:indentLine_char = '|'

Plug 'itchyny/lightline.vim'                                      " https://github.com/itchyny/lightline.vim
let g:lightline = {'colorscheme': 'one'}

Plug 'ap/vim-css-color'                                           " https://github.com/ap/vim-css-color

""" 4.3 Editing
Plug 'tpope/vim-surround'                                         " https://github.com/tpope/vim-surround
Plug 'easymotion/vim-easymotion'                                  " https://github.com/easymotion/vim-easymotion
map <Leader><Leader> <Plug>(easymotion-prefix)
map <Leader>j <Plug>(easymotion-prefix)j
map <Leader>k <Plug>(easymotion-prefix)k
map <Leader>n <Plug>(easymotion-prefix)n
map <Leader>N <Plug>(easymotion-prefix)N

Plug 'terryma/vim-expand-region'                                  " https://github.com/terryma/vim-expand-region
Plug 'terryma/vim-multiple-cursors'                               " https://github.com/terryma/vim-multiple-cursors
Plug 'sirver/UltiSnips'                                           " https://github.com/SirVer/ultisnips
Plug 'tpope/vim-commentary'                                       " https://github.com/tpope/vim-commentary
autocmd FileType python,shell set commentstring=#\ %s              
autocmd FileType mako set cms=##\ %s
autocmd FileType apache setlocal commentstring=#\ %s

""" 4.4 Files
Plug 'vim-scripts/vim-auto-save'                                  " https://github.com/vim-scripts/vim-auto-save
let g:auto_save = 1  

""" 4.5 Git
Plug 'airblade/vim-gitgutter'                                     " https://github.com/airblade/vim-gitgutter
Plug 'Xuyuanp/nerdtree-git-plugin'                                " https://github.com/Xuyuanp/nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
     \ "Modified"  : "✹",
     \ "Staged"    : "✚",
     \ "Untracked" : "✭",
     \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

""" 4.6 Highlighting
Plug 'gregsexton/MatchTag'                                        " https://github.com/gregsexton/MatchTag
Plug 'kien/rainbow_parentheses.vim'                               " https://github.com/kien/rainbow_parentheses.vim
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

""" 4.7 Linting
Plug 'w0rp/ale'                                                   " https://github.com/w0rp/ale
let g:ale_sign_column_always = 0
let g:ale_set_loclist = 0
let g:ale_set_highlights = 0
let b:ale_linters = ['flake8', 'pylint']
let b:ale_fixers = ['autopep8', 'yapf']
let b:ale_warn_about_trailing_whitespace = 0
let g:ale_completion_enabled = 1
let g:ale_open_list = 0
let g:ale_keep_list_window_open = 0
noremap <leader>p :Autoformat<cr>

highlight clear ALEErrorSign
highlight clear ALEWarningSign

""" 4.8 Markdown
Plug 'gabrielelana/vim-markdown'                                  " https://github.com/gabrielelana/vim-markdown
Plug 'joker1007/vim-markdown-quote-syntax'                        " https://github.com/joker1007/vim-markdown-quote-syntax

""" 4.9 Python
Plug 'vim-scripts/indentpython.vim'                               " https://github.com/vim-scripts/indentpython.vim<Paste>
Plug 'michaeljsmith/vim-indent-object'                            " https://github.com/michaeljsmith/vim-indent-object
Plug 'vim-python/python-syntax'                                   " https://github.com/vim-python/python-syntax
let g:python_highlight_all = 1

""" 4.10 R-language
Plug 'jalvesaq/Nvim-R'                                            " https://github.com/jalvesaq/Nvim-R
let g:rout_follow_colorscheme = 1
let g:Rout_more_colors = 1

""" 4.11 Searching
Plug 'majutsushi/tagbar'                                           " https://github.com/majutsushi/tagbar
let g:tagbar_width=30
nnoremap <Leader>m :TagbarToggle<CR>

Plug 'haya14busa/incsearch.vim'                                    " https://github.com/haya14busa/incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }            " https://github.com/scrooloose/nerdtree
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 40
nnoremap <Leader>n :NERDTreeToggle<Enter>

Plug 'vim-ctrlspace/vim-ctrlspace'                                 " https://github.com/vim-ctrlspace/vim-ctrlspace<Paste>
if has("gui_running")
    let g:CtrlSpaceSymbols = { "File": "◯", "CTab": "▣", "Tabs": "▢" }
endif

if executable("ag")
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif

nnoremap <silent><C-p> :CtrlSpace O<CR>

""" 4.12 User Interface
Plug 'yuttie/comfortable-motion.vim'                               " https://github.com/yuttie/comfortable-motion.vim
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"

Plug 'kassio/neoterm'                                              " https://github.com/kassio/neoterm
Plug 'godlygeek/tabular'                                           " https://github.com/godlygeek/tabular

call plug#end()
