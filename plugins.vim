"{{{ ============= Vim-Plug ============== "

let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

let g:vim_bootstrap_langs = "c,erlang,go"
let g:vim_bootstrap_editor = "nvim"				" Nvim or Vim

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!\curl -fLo " . vimplug_exists . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"
  autocmd VimEnter * PlugInstall
endif

call plug#begin(expand('~/.config/nvim/plugged'))

"}}}

"{{{ ================= looks and GUI stuff ================== "

Plug 'vim-airline/vim-airline'                          " airline status bar
Plug 'vim-airline/vim-airline-themes'                   " airline themes
Plug 'ryanoasis/vim-devicons'                           " pretty icons everywhere
Plug 'luochen1990/rainbow'                              " rainbow parenthesis
Plug 'hzchirs/vim-material'                             " material color themes
Plug 'gregsexton/MatchTag'                              " highlight matching html tags
Plug 'tpope/vim-fugitive'                               " the legendary git manager
Plug 'airblade/vim-gitgutter'                           " git gutter
Plug 'kien/ctrlp.vim'                                   " ctrl-p
Plug 'dense-analysis/ale'                               " syntax checker
Plug 'stannous/vim-claritybeauty'                       " color-scheme
Plug 'maxmellon/vim-jsx-pretty'                         " jsx indent
Plug 'ludovicchabant/vim-gutentags'                     " gutentags
Plug 'majutsushi/tagbar'                                " tagbar
Plug 'fatih/vim-go'                                     " go plugin

call plug#end()

"}}}

let g:rainbow_active = 1

colorscheme claritybeauty

nnoremap <leader>d :Gvdiff origin/master<CR>
nnoremap <leader>h :Gvdiff HEAD<CR>
