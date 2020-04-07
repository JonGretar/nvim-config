
" Load Plugins
call plug#begin('~/.config/nvim/plugged')                                                                                      
  source ~/.config/nvim/plugins.vim                                                                                            
call plug#end()           

" Misc Stuff
"set mouse=""
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2

set number " line numbering
set relativenumber
set encoding=utf-8

set hlsearch
set incsearch
set ignorecase
set smartcase

set cursorline
set cursorcolumn

" Set leader
let mapleader = "\<Space>"

" Remove Trailing Whitespaces!!!!!
autocmd BufWritePre * :%s/\s+$//e

" Not tmp or swap files
set nobackup
set noswapfile
set nowritebackup

nnoremap <C-p> :FuzzyOpen<CR>

map <C-n> :NERDTreeToggle<CR>

" Airline Stuff
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Neomake Config
augroup localneomake
  autocmd! BufWritePost * Neomake
augroup END
let g:neomake_markdown_enabled_markers = []
let g:neomake_elixir_enabled_markers = ['mix', 'credo']

" Deoplete
let g:deoplete#enable_at_startup = 1

" Theme Stuff
set background=dark
syntax enable
colorscheme molokai

