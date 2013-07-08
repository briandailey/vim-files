execute pathogen#infect()

" basics
filetype plugin indent on
set nocompatible
set history=500
" do not create backup file.
set nobackup
" '20  - remember marks for 20 previous files
" \"50 - save 50 lines for each register
" :20  - remember 20 items in command-line history
" %    - remember the buffer list (if vim started without a file arg)
" n    - set name of viminfo file
set viminfo='20,\"50,:20,%,n~/.viminfo
" Go back to the position the cursor was on the last time this file was edited
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")|execute("normal `\"")|endif
" allow movement to another buffer without saving the current one
set hidden
set scrolloff=5
" turn off error beep/flash
set noerrorbells
set visualbell
" set ruler
set showcmd
" show matching braces
set showmatch
" syntax highlighting
syntax on

" incremental search
set ic
set incsearch
set smartcase
set hlsearch

" because, Python
set tabstop=4
set expandtab
set smartindent
set shiftwidth=4
set nowrap

set laststatus=2

"Use the arrows to something useful, buffer management.
"put @binarydud on this and watch him cry.
map <right> :bn<cr>
map <left> :bp<cr>
map <down> :bd<cr>

" 256 color mode.
set t_Co=256
colorscheme wombat256i

" highlight trailing whitespace so we catch it early.
highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" PLUGINS =========
" use fancy airline fonts
let g:airline_powerline_fonts=1
let g:airline_enable_fugitive=1
let g:airline_enable_syntastic=1

"syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=2

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc
