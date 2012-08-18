" plugins
" stylus: http://www.vim.org/scripts/script.php?script_id=3513
" autocomplete: http://www.vim.org/scripts/script.php?script_id=1879
"
"
"
"

set nocompatible

" change mapleader
let mapleader=","

" edit/reload vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" local dirs
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

" colorscheme
colorscheme desert

set autoindent      " copy indent from last line when starting new line
set backspace=indent,eol,start " make backspace delete more
"set cursorline     " highlight cursor line
set encoding=utf-8 nobomb " BOM often causes trouble
set esckeys         " allow cursor keys in insert mode
set expandtab       " expand tabs to spaces
set gdefault        " by default, add g flad to search/replace
set hidden          " remember undo history and marks when switching buffers
set history=1000    "increase history to 1000
set hlsearch        " highlight searches
set ignorecase      " ignore case of searches
set incsearch       " highlight dynamically as pattern is typed
"set mouse=a         " enable mouse (only use for scrolling)
set noerrorbells    " disable error bells
set nojoinspaces    " only insert single space after a ., ?, and !
set nostartofline   " don't reset cursor to start of line when moving around
set nowrap          " don't wrap lines
"set number         " enable line numbers
set report=0        " show all changes
set ruler           " show the cursor position
set scrolloff=8     " start scrolling 8 lines before the border
set shiftwidth=2    " # spaces for indenting
set shortmess=atI   " don't mess with intro message
set showcmd
set showmatch       " show matching parantheses
set showmode        " show the current mode
set showtabline=2   " always show tab bar
set sidescrolloff=3 " scroll before vertical border
set smartcase       " ignore 'ignorecase' if search has uppercase letters
set smarttab        " smart tab/backspaces   
set softtabstop=2   " tab results in 2 spaces
set splitbelow      " new window goes below
set splitright      " new window goes right
set title           " show filename in window title bar
set undolevels=1000 " lots of undo
set visualbell      " visual bell instead of audio
set wildmenu        " tab in command mode shows options
set wildmode=list:longest
set winminheight=0  " allows windows to be reduced to a single line
set wrapscan        " searches can wrap around the end of the file


" forgot to sudo?
cmap w!! w !sudo tee % > /dev/null

" 
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

nmap <silent> ,/ :nohlsearch<CR>

" scroll viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" better mark jumping
nnoremap ' `
nnoremap ` '

" indent/unindent block
nnoremap <leader>] >i{<CR>
nnoremap <leader>[ <i{<CR>

" less shift key
nnoremap ; :

" Paste toggle (,p)
set pastetoggle=<leader>p
map <leader>p :set invpaste paste?<CR>


command Q q         " remap Q to q
command W w         " remap W to w
command Wq wq       " remap Wq to wq
command WQ wq       " remap WQ to wq

" Hard to type things
imap >> →
imap << ←
imap ^^ ↑
imap VV ↓
imap aa λ

" filetype specific tabbing
filetype plugin indent on
syntax on
autocmd FileType c,cpp,h set ts=4 softtabstop=4 shiftwidth=4 expandtab
autocmd FileType sh set ts=4 shiftwidth=2 expandtab
autocmd FileType python,ruby set ts=4 shiftwidth=4 expandtab
autocmd FileType coffee,javascript,styl set ts=2 shiftwidth=2 expandtab

" highlight everything over 80 chars in red
:au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

" Map normal mode Enter to add a new line.
nmap <Enter> o<Esc>
map <leader><Enter> o<ESC>


