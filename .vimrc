" plug

call plug#begin()

Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'altercation/vim-colors-solarized'
Plug 'ervandew/supertab'
Plug 'majutsushi/tagbar'
Plug 'markabe/bufexplorer'
Plug 'othree/html5.vim'
Plug 'preservim/nerdtree'
Plug 'sickill/vim-pasta'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'posva/vim-vue', { 'for': 'vue' }
Plug 'toyamarinyon/vim-swift', { 'for': 'swift' }
Plug 'lervag/vimtex', { 'for': 'tex' }
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
Plug 'elixir-editors/vim-elixir', { 'for': 'elixir' }
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" syntax
filetype off
filetype plugin indent on
syntax on

" JSON files are javascript
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.m set ft=objc

" Highlightning
hi clear CursorLine
augroup CLClear
    autocmd! ColorScheme * hi clear CursorLine
augroup END
hi CursorLineNR cterm=bold
augroup CLNRSet
    autocmd! ColorScheme * hi CursorLineNR cterm=bold
augroup END
set cursorline

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
let NERDTreeIgnore=['\~$', '.*\.pyc$', 'pip-log\.txt$', 'whoosh_index', 'xapian_index', '.*.pid', 'monitor.py', '.*-fixtures-.*.json', '.*\.o$', 'db.db']

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

" No Fold Enable
setl nofen

" Javascript section

au FileType javascript setl nocindent

" Go section

au FileType go setl nolist
au FileType go setl noet
au FileType go setl nosmarttab

" Python section
au FileType python setl tabstop=2
au FileType python setl shiftwidth=2

" Markdown
au FileType markdown setl nofen

" Latex
let g:tex_flavor='latex'
" let g:vimtex_view_method='skim'
let g:vimtex_quickfix_mode=0
au FileType tex set conceallevel=1
let g:tex_conceal='abdmg'

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" BufExplorer
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
map <leader>o :BufExplorer<cr>

" TagBar and AutoTag
"
let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>

" Less chording
nnoremap ; :
