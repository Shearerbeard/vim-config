set nocompatible
filetype off
call pathogen#infect()

" Global
syntax on
set autoindent
set smartindent
filetype plugin indent on
autocmd FileType json set sw=4
set wildignore+=dist/*,out/*
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=2
set relativenumber


" Keybinding
map <F5> :NERDTreeToggle<CR>
map <C-t> <Plug>(CommandT)
map tt <Plug>(CommandTTag)
nmap <F8> :TagbarToggle<CR>
" nmap <F8> :TlistToggle<CR>


" search
set incsearch
set ignorecase
set smartcase

" Command-T
let g:CommandTWildIgnore = &wildignore . ",node_modules/*" . ",dist/*"

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-", "is not recognized!"]
let g:syntastic_html_tidy_ignore_errors = ['proprietary attribute "*"', 'form *']

" Airline 
let g:airline#extensions#tabline = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='papercolor'
set laststatus=2

" Colors
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
endif

colorscheme elrodeo
" GVIM

set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h11

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

" Backup / Swap
set nobackup
set noswapfile

" Tags / Tagbar
set tags=./tags,tags
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'

" Custom
command PrettyPrint execute "%!python -m json.tool"
au FileType less setl sw=2 sts=2 et
