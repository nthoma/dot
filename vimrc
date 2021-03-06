set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'trapd00r/neverland-vim-theme'
Plugin 'bling/vim-airline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/fzf.vim'
"Plugin 'vim-syntastic/syntastic'

call vundle#end()            " required
filetype plugin indent on    " required

"appearance
set number
set t_Co=256
colorscheme neverland-darker
let g:airline_powerline_fonts = 1

"mappings
map <C-n> :NERDTree<CR>
map <C-p> :FZF<CR>

"options
set tabstop=4
set expandtab
set shiftwidth=4
set updatetime=100

if exists('&signcolumn')  " Vim 7.4.2201
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1
endif
