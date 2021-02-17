set completeopt=longest,menu          " Only insert the longest common text of the matches
set pumheight=10                      " Determines the maximum number of items to show in the popup menu
set wildmenu                          " Wild char completion menu
set wildmode=longest:list,full
set wildchar=<TAB>                    " Start wild expansion in the command line using <TAB>
set history=50                        " Keep 50 lines of command line history
set nobackup                          " No *~ backup files
set signcolumn=yes                    " always show signcolumn

set list
set listchars=eol:↵,tab:>-,trail:-,extends:>,precedes:<

set nowritebackup                     " Do not make a backup before overwriting a file
set cmdheight=2                       " Better display for messages
set colorcolumn=80
set t_Co=256
set nowrapscan                        " Do not searche wrap around the end of the file
set noswapfile                        " Do not use a swapfile for the buffer
set background=dark                   " Dark background
set termguicolors                     " Use true color in the terminal
colorscheme solarized                 " Colorschemes
set shortmess+=c                      " don't give iins-completion-menu messages.
set backspace=eol,start,indent        " Controlling What the Backspace Key Does
set timeoutlen=500                    " The time in milliseconds that is waited for a key code 
set expandtab                         " Use the appropriate number of spaces to insert a <Tab>
set autoindent                        " Copy indent from current line when starting a new line
set copyindent                        " copy the previous indentation on autoindenting
set shiftwidth=4                      " Number of spaces to use for each step of indent
set tabstop=4                         " Number of spaces that a <Tab> in the file counts for
set textwidth=79                      " Set the text width
set scrolloff=7                       " No scroll offset
set encoding=UTF-8                    " Set default encoding to UTF-8
set autoread                          " Auto read when file is changed from outside
filetype on                           " Enable filetype detection
filetype indent on                    " Enable filetype-specific indenting
filetype plugin on                    " Enable filetype-specific plugins
set showmatch                         " Cursor shows matching ) and }
syntax on                             " Syntax highlight
set ruler                             " Shows line number and column
set rulerformat=%l\:%c                " Better ruler format
set number                            " Display line numbers
set wildignore=*.o,*~,*.pyc           " Ignore these files while expanding wild chars
set fillchars=stl:\ ,stlnc:\ ,vert:\ ,fold:\ ,diff:\  " Hide horizontal line between windows 
set hlsearch                          " Search highlighting
set incsearch                         " Incremental search
set ignorecase                        " Ignore case when searching
set smartcase                         " Ignore case if search pattern is all lowercase,case-sensitive otherwise
set magic
set laststatus=2                      " Open status line
set showmode                          " Show current mode
set nocompatible                      " Make sure Vim is not in compatible mode
set mouse=a                           " Enable the use of the mouse
set lazyredraw                        " Don't redraw while executing macros 
set linebreak                         " Make Vim break lines without breaking words
set wrap                              " Line wrapping
set formatoptions-=t
set splitright                        " Put the new splited window right of the current one
set tabpagemax=100                    " Maximum number of tab pages
set hidden                            " Buffer becomes hidden when it is |abandon|ed 
set smarttab                          " Insert tabs on the start of a line according to context
set noerrorbells                      " No annoying sound on errors
set novisualbell                      " No visual bell
set t_vb=                             " No beep or flash
set cursorline                        " Highlight the screen line of the cursor
hi clear CursorLine
hi CursorLine gui=underline cterm=underline ctermfg=None guifg=None



" -----------------------------------------------------------------------------
" autocmd TextChanged,TextChangedI <buffer> silent write

autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType go setlocal expandtab shiftwidth=4 tabstop=4
autocmd Filetype html setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd Filetype javascript setlocal tabstop=4 sts=4 sw=4
autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd Filetype sh setlocal tabstop=2 softtabstop=2 shiftwidth=2
" -----------------------------------------------------------------------------
"" Keybinding
let mapleader = ","
" -----------------------------------------------------------------------------
"" Plugins
call plug#begin('~/.vim/plugged')

"Plug 'Yggdroot/indentLine'
"let g:IndentLinesEnable = 1
"let g:indentLine_leadingSpaceEnabled = 1

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1

"Plug 'Chiel92/vim-autoformat'

" Plug 'michaeljsmith/vim-indent-object'
"Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
" Plug 'kien/ctrlp.vim'
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'

" Plug 'groenewege/vim-less'
" Plug 'godlygeek/tabular'
" Plug 'plasticboy/vim-markdown'
" Plug 'vim-syntastic/syntastic'
" let g:syntastic_python_checkers = ['pylint']

" Plug 'mhinz/vim-startify'
" Plug 'Vimjas/vim-python-pep8-indent'
" Plug 'pangloss/vim-javascript'
" Plug 'mxw/vim-jsx'
" Plug 'vim-scripts/nginx.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'itchyny/lightline.vim'
let g:lightline = {'colorscheme': 'default'}

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
let g:python_host_prog = '/Users/alexsu/.pyenv/shims/python'
let g:python3_host_prog = '/Users/alexsu/.pyenv/shims/python3'

" Plug 'vim-airline/vim-airline-themes'
" let g:airline_theme='deus'
call plug#end()

