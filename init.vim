
" Load Plugins
call plug#begin('~/.config/nvim/plugged')                                                                                      
  source ~/.config/nvim/plugins.vim                                                                                            
call plug#end()           

" Misc Stuff
"set mouse=""
set mouse=a
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

" Use system clipboard
set clipboard=unnamed

" Set leader
let mapleader = "\<Space>"

" Remove Trailing Whitespaces!!!!!
autocmd BufWritePre * :%s/\s+$//e

" Let's run mix in test mode. So we do not interfere with code reload
let $MIX_ENV = 'test'

" Not tmp or swap files
set nobackup
set noswapfile
set nowritebackup

" Include configurations
source ~/.config/nvim/coc.vim

" Some keybinding
nnoremap <C-p> :FuzzyOpen<CR>
map <C-n> :NERDTreeToggle<CR>

" Buffer traversing
map <C-x><left> :bp<CR>
map <C-x><right> :bn<CR>

" Airline Stuff
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Some startify settings
let g:startify_change_to_vcs_root = 1

 let g:startify_lists = [
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]

 
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


" Auto start NERD tree when opening a directory
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | wincmd p | endif

" Auto start NERD tree if no files are specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | exe 'NERDTree' | endif

" Let quit work as expected if after entering :q the only window left open is NERD Tree itself
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


