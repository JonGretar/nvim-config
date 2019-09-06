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


call plug#begin('~/.config/nvim/plugged')
	" Plugins go here
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'sheerun/vim-polyglot'
  Plug 'tomasr/molokai'

  Plug 'neomake/neomake'

  Plug 'tpope/vim-fugitive'

  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'

"  Plug 'c-brenn/phoenix.vim'
  Plug 'tpope/vim-projectionist'
  Plug 'slashmili/alchemist.vim'
  Plug 'powerman/vim-plugin-AnsiEsc'
  Plug 'cloudhead/neovim-fuzzy'
call plug#end()

nnoremap <C-p> :FuzzyOpen<CR>

map <C-n> :NERDTreeToggle<CR>

" Airline Stuff
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

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

