filetype plugin indent on
syntax on

"Y U NO TABS OR SPACES
set tabstop=2
set shiftwidth=2
set smarttab
set et

set nocompatible
set autoindent
set lbr
set showcmd
set backspace=indent,eol,start

" no backups
set nobackup
set nowb
set noswapfile

set showmatch
set mat=2

" Search tweaks
set hlsearch
set incsearch
set ignorecase
set smartcase

" show tabs and trailing spaces
set list listchars=tab:>·,trail:·

set wildmenu

" enable mouse
set mouse=a

" increase history
set history=700

" UI tweaks
set ruler
set nolazyredraw
set number

" no sounds
set noerrorbells
set novisualbell
set t_vb=
set tm=500

:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

let mapleader = ","
let g:mapleader = ","

" Various key bindings for fast actions
map <leader>w :w!<cr>
map <leader>q :q

map <space> /
map <c-space> ?

map <leader>tn :tabnext<cr>
map <leader>tp :tabprev<cr>
map <leader>te :tabe
map <leader>tr :tabrewind<cr>
map <leader>tl :tablast<cr>

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrc

" Specify undodir
set undodir=~/.vim_runtime/undodir
set undofile

" Always hide the statusline
set laststatus=2
"
" Format the statusline
set statusline=\ %F%m%r%h\ %w\ \ \Line:\ %l/%L:%c

" Set 7 lines to the curors - when moving vertical..
set so=7

" load pathogen
call pathogen#runtime_append_all_bundles()

if has('gui_running')
  " solarized colorscheme
  set background=dark
  let g:solarized_termcolors=256
  colorscheme solarized
  " Ctrl + C, Ctrl + V
  map <C-v> "+gP
  map <C-c> "+y
  map <C-x> "+x
else
endif

" NERD Tree
map <leader>tt :NERDTreeToggle<cr>
