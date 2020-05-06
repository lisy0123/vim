"vimrc
"=================================================

set wrap
set mouse=a
set ignorecase
set ruler
set number

set showmatch
set showmode
set showcmd

set ignorecase
set incsearch
set hlsearch

set autoindent
set cindent
set smartindent
set noerrorbells
set visualbell
set noswapfile

set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab

set cursorline
set nocompatible
set bs=indent,eol,start
set history=1000
set noswapfile
set nobackup

filetype on
syntax on
colorscheme onedark

set laststatus=2
let g:lightline = {'colorscheme':'wombat'}

au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

set updatetime=100

"set guicursor=a:ver30-blinkon800-blinkoff400
" Workaround some broken plugins which set guicursor indiscriminately.
"autocmd OptionSet guicursor noautocmd set guicursor=a:ver30-blinkon800-blinkoff400
"au VimLeave * set guicursor=a:ver30-blinkon800-blinkoff400

if exists('$TMUX')
    let &t_SI = "\ePtmux;\e\e[5 q\e\\"
    let &t_EI = "\ePtmux;\e\e[2 q\e\\"
else
    let &t_SI = "\e[5 q"
    let &t_EI = "\e[2 q"
endif

"===========================================================================
map 1 :wq<cr>
map 2 :w<cr>
map 3 :q<cr>
map 4 :q!<cr>
map 0 :NERDTree<cr>

"===========================================================================
"   C compile
"==========================================================================
au filetype c map 5 :w!<cr>:!gcc % -o %< -Wall -Wextra -Werror <cr>
au filetype c map 6 :w!<cr>:!gcc % -o %< -Wall -Wextra -Werror <cr>:!./%<<cr>
au filetype c map 7 :w!<cr>:!gcc % -o %< -Wall -Wextra -Werror <cr>:wq<cr>

"===========================================================================
"   Python compile
"===========================================================================
au filetype python map 5 :w!<cr>:!python3 %<cr>

"===========================================================================
"   Ruby compile
"===========================================================================
au filetype ruby map 5 :w!<cr>:!ruby %<cr>

