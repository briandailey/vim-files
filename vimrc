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

set backspace=indent,eol,start            " Allow backspace to go beyond insert start

set laststatus=2

"Use the arrows to something useful, buffer management.
"put @binarydud on this and watch him cry.
map <right> :bn<cr>
map <left> :bp<cr>
map <down> :bd<cr>

" 256 color mode.
set t_Co=256
colorscheme zenburn
" colorscheme jellybeans

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

let g:syntastic_stl_format = '%E{Err:%e}%B{ | }%W{Warn:%w}'
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list=0
let g:syntastic_loc_list_height=3
let g:syntastic_python_checker_args = "--max-complexity 13 --ignore=E501,E128"
let g:syntastic_python_flake8_args = "--max-complexity 13 --ignore=E501,E128"
let python_highlight_all = 1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'


run SyntasticEnable ruby
run SyntasticEnable eruby
run SyntasticEnable c
run SyntasticEnable cpp
run SyntasticEnable coffee
run SyntasticEnable css
run SyntasticEnable cucumber
run SyntasticEnable sass
run SyntasticEnable haml
run SyntasticEnable less
run SyntasticEnable html
run SyntasticEnable xhtml
run SyntasticEnable javascript
run SyntasticEnable sh
run SyntasticEnable python

let g:vim_markdown_folding_disabled=1

let g:airline#extensions#tabline#enabled = 1

au FileType ruby,html,htm,php,xml,javascript setlocal tabstop=2
au FileType ruby,html,htm,php,xml,javascript setlocal shiftwidth=2
au FileType ruby,html,htm,php,xml,javascript setlocal softtabstop=2

abbrev tablethrow (╯°□°)╯︵ ┻━┻
