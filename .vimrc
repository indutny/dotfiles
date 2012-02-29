" load pathogen
call pathogen#runtime_append_all_bundles()

" syntax
filetype off
filetype plugin indent on
syntax on

" JSON files are javascript
autocmd BufNewFile,BufRead *.json set ft=javascript

"Y U NO TABS OR SPACES
set tabstop=2
set shiftwidth=2
set smarttab
set et

set ttyfast
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
set wildmode=list:longest

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit
set wildignore+=*.dSYM                           " OSX debug info directories

set wildignore+=*.luac                           " Lua byte code
set wildignore+=*.pyc                            " Python byte code

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" enable mouse
set mouse=a

" increase history
set history=1000

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
" map <leader><leader> <leader>
map <tab> <c-w>w
map <leader><tab> :tabnext<cr>
map <leader><s-tab> :tabprev<cr>
map <leader>w :w!<cr>
map <leader>q :q

map <space> /
map <c-space> ?

map <leader>tn :tabnext<cr>
map <leader>tp :tabprev<cr>
map <leader>te :tabe
map <leader>tr :tabrewind<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove 

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrc

" Specify undodir
set undodir=~/.vim_runtime/undodir
set undofile
set undoreload=10000

" Always hide the statusline
set laststatus=2
"
" Format the statusline
set statusline=\ %F%m%r%h\ %w\ %{fugitive#statusline()}\ \Line:\ %l/%L:%c

" Set 7 lines to the curors - when moving vertical..
set so=7

" solarized colorscheme
let g:solarized_termtrans=1
set background=light
colorscheme solarized


" Ctrl + C, Ctrl + V
map <C-v> "+gP
map <C-c> "+y
map <C-x> "+x

" NERD Tree
map <leader>n :NERDTreeToggle<cr>
let NERDTreeIgnore=['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$', 'whoosh_index', 'xapian_index', '.*.pid', 'monitor.py', '.*-fixtures-.*.json', '.*\.o$', 'db.db']

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

"Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

" Highlight 81 column
set colorcolumn=81
:highlight ColorColumn ctermbg=lightblue guibg=lightblue


" Javascript section

au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript inoremap <buffer> $r return

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" BufExplorer
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
map <leader>o :BufExplorer<cr>

" XClip
vmap <leader>y :!xclip -f -sel clip<CR>
map <leader>p :-1r !xclip -o -sel clip<CR>

" TagBar and AutoTag
"
let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>

" Less chording
nnoremap ; :
