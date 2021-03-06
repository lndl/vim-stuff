" || Set 'nocompatible' to ward off unexpected things that your distro might
" || have made, as well as sanely reset options when re-sourcing .vimrc

set nocompatible

" || Plugin List

call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'msanders/snipmate.vim'
Plug 'tpope/vim-rails'
Plug 'vim-scripts/a.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
call plug#end()

" || Allow intelligent auto-indenting for each filetype,
" || and for plugins that are filetype specific.

filetype indent plugin on

" || Enable syntax highlighting

syntax on

" || Clipboarding

set clipboard=unnamedplus " Use system wide clipboard by default

" || Allows you to re-use the same window and switch from an unsaved buffer without
" || saving it first. Also allows you to keep an undo history for multiple files

set hidden

" || Better command-line completion

set wildmenu

" || Show partial commands in the last line of the screen

set showcmd

" || Highlight searches

set hlsearch

" || Set encoding to UTF-8

set encoding=utf-8

" || Use case insensitive search, except when using capital letters

set ignorecase
set smartcase

" || Allow backspacing over autoindent, line breaks and start of insert action

set backspace=indent,eol,start

" || When opening a new line and no filetype-specific indenting is enabled, keep
" || the same indent as the line you're currently on. Useful for READMEs, etc.

set autoindent

" || Stop certain movements from always going to the first character of a line.

set nostartofline

" || Display the cursor position on the last line of the screen or in the status
" || line of a window

set ruler

" || Always display the status line, even if only one window is displayed

set laststatus=2

" || Enable use of the mouse for all modes

" set mouse=a

" || Set the command window height to 1 lines

set cmdheight=1

" || Display line numbers on the left

" set number

" || Quickly time out on keycodes, but never time out on mappings

set notimeout ttimeout ttimeoutlen=200

" ||  Remove trailing spaces in each document line when saving
autocmd BufWritePre * :%s/\s\+$//e

"------------------------------------------------------------
" || Color settings
"------------------------------------------------------------
" || Set 256 colors

set t_Co=256

" || Change color scheme

color default

" || Change popups colors
highlight Pmenu ctermbg=red ctermfg=white
highlight PmenuSel ctermbg=blue ctermfg=white

"------------------------------------------------------------
" || Indentation options
"------------------------------------------------------------

" || Indentation settings for using 2 spaces instead of tabs.

set shiftwidth=2
set softtabstop=2
set expandtab

"------------------------------------------------------------
" || Mappings
"------------------------------------------------------------

" || Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" || which is the default

map Y y$

" || Remapping Esc key

imap ññ <Esc>

" || Remapping movement keys to fit better in a spanish layout (NO MORE USED)

"map h <nop>
"map j <left>
"map k <down>
"map l <up>
"map ñ <right>

"------------------------------------------------------------
" || Plugins
"------------------------------------------------------------
"Ctrl-P Optimizations
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'

let g:ctrlp_match_func = {'match': 'pymatcher#PyMatch'}

let g:ctrlp_use_caching = 0

"Ctrl-P Funky (For functions declarations/definitions jumps)
let g:ctrlp_extensions = ['funky']
nnoremap <C-O> :CtrlPFunky<Cr>

"Vim-Gutter
highlight clear SignColumn

"Vim-Airline
let g:airline_powerline_fonts = 1
