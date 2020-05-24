" remap leader
let g:mapleader = '.'

source $HOME/.config/nvim/plugin/plugins.vim

set autoindent              " indent a new line the same amount as the line just typed
set cc=80                   " set an 80 column border for good coding style
set cursorcolumn
set cursorline
set expandtab               " converts tabs to white space
set gdefault                " sub with global
set hlsearch                " highlight search results
set ignorecase              " case insensitive matching
set incsearch
set matchpairs+=<:>
set mouse=v                 " middle-click paste with mouse
set nocompatible            " disable compatibility to old-time vi
set nowrapscan              " don't rollback search
set number                  " add line numbers
set relativenumber          " add relative line numbers
set shiftwidth=4            " width for autoindents
set showmatch               " show matching brackets.
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set spell                   " enable spell checking
set tabstop=4               " number of columns occupied by a tab character
set wildmode=longest,list   " get bash-like tab completions

filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting

" simplify block selection
nnoremap <tab> %
vnoremap <tab> %

" line wise movement
nnoremap j gj
nnoremap k gk

" search related
nnoremap <leader><space> :noh<cr>
nnoremap / /\v
vnoremap / /\v

" toggle case sensitivity
nmap <F9> :set ignorecase! ignorecase? <cr>

" select all
nnoremap <leader>a ggvG$

" airline
let g:airline#extensions#tabline#enabled = 1

" netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 25
nnoremap <F3> :Lexplore<CR>
vnoremap <F3> :Lexplore<CR>

" fugitive
nnoremap <leader>gs :GitGutterStageHunk<CR>
