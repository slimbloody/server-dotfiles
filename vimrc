syntax enable
filetype plugin indent on
set bg=dark

" Stop backup files
set nobackup
set nowritebackup
set noswapfile

" better search
set hlsearch
set incsearch
set ignorecase
set smartcase

" tab and indent
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=80
set smarttab
set expandtab

set history=1000
set nocompatible
set number      " show linenumber
set confirm     " prompt when existing from an unsaved file
set showcmd     " Show (partial) command in status line
set backspace=indent,eol,start  " More powerful backspacing

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

cmap w!! %!sudo tee >/dev/null %

" <F2> paste toggle
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

" eggcache vim
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa