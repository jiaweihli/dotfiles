call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

if v:progname =~? "evim"
  finish
endif

set nocompatible

set t_Co=256
"colorscheme zenburn
colorscheme blackboard

set backspace=indent,eol,start

set ruler
set showcmd

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

if has('mouse')
  set mouse=r
endif

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

if has("autocmd")

  filetype plugin indent on

  set listchars=tab:>.,trail:.,extends:#,nbsp:.

  augroup vimrcEx
  au!

  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent
  set copyindent

endif

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

set hidden

set nowrap
set tabstop=4
set backspace=eol,indent,start
set number
set shiftwidth=4
set shiftround
set showmatch
set ignorecase
set smartcase
set smarttab
set incsearch

set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set visualbell
set noerrorbells

set nobackup
set noswapfile

set pastetoggle=<F2>

nmap <silent> ,/ :nohlsearch<CR>t
cmap w!! w !sudo tee % >/dev/null

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
