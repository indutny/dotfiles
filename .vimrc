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
" map <leader><leader> <leader>
map <leader><tab> <c-w>w
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

" Always hide the statusline
set laststatus=2
"
" Format the statusline
set statusline=\ %F%m%r%h\ %w\ \ \Line:\ %l/%L:%c

" Set 7 lines to the curors - when moving vertical..
set so=7

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
map <leader>n :NERDTreeToggle<cr>

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

" Javascript section

au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript imap <c-t> AJS.log();<esc>hi
au FileType javascript imap <c-a> alert();<esc>hi

au FileType javascript inoremap <buffer> $r return

function! JavaScriptFold()
  setl foldmethod=syntax
  setl foldlevelstart=1
  syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

  function! FoldText()
    return substitute(getline(v:foldstart), '{.*', '{...}', '')
  endfunction
  setl foldtext=FoldText()
endfunction

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" BufExplorer
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
map <leader>o :BufExplorer<cr>
