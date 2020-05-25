" Plug installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')
  Plug 'joshdick/onedark.vim'   " Colorscheme
  Plug 'itchyny/lightline.vim'  " Status line
  Plug 'tpope/vim-fugitive'     " Git
  Plug 'frazrepo/vim-rainbow'   " Brace matching
  Plug 'rstacruz/vim-closer'    " Brace closing
  Plug 'preservim/nerdtree'     " File explorer
  Plug 'ycm-core/YouCompleteMe' " Code completion
  Plug 'rhysd/vim-clang-format' " Code formatting
call plug#end()

" Colorscheme
syntax on
colorscheme onedark

" Encoding
set encoding=utf-8

" Appearance
set number
set nowrap
set cursorline
set colorcolumn=80
set signcolumn=yes

" Status line
set laststatus=2
set noshowmode
let g:lightline= {
\   'colorscheme': 'onedark',
\   'active': {
\     'left': [
\       ['mode', 'paste'],
\       ['gitbranch', 'readonly', 'filename', 'modified'] 
\     ]
\   },
\   'component_function': {'gitbranch': 'FugitiveHead'},
\ }

" Indentations
set expandtab
set shiftround
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

" Spacing
set list
set listchars=trail:.,extends:>,precedes:<

" Brace matching
set noshowmatch
let g:rainbow_active=1

" Behavior
set title
set visualbell
set mouse=a
set ignorecase
set confirm
set wildmenu
set wildmode=list:longest
set backspace=indent,eol,start

