" Ben Siebert
set nocompatible
filetype off

"""""""""""
" Plugins "
"""""""""""

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'VundleVim/Vundle.vim'

Bundle 'tpope/vim-fugitive'
"Bundle 'tpope/vim-surround'
"Bundle 'ervandew/supertab'
Bundle 'patstockwell/vim-monokai-tasty'

" Deoplete
Bundle 'Shougo/deoplete.nvim'
Bundle 'roxma/nvim-yarp'
Bundle 'roxma/vim-hug-neovim-rpc'
Bundle 'carlitux/deoplete-ternjs'
  let g:deoplete#enable_at_startup = 1

Bundle 'wycats/nerdtree'
  let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$', '.*node_modules.*']
  map <Leader>n :NERDTreeToggle<CR>

Bundle 'wincent/Command-T'
  let g:CommandTMaxHeight=20
  map <Leader>ft :CommandTFlush<CR>

Bundle 'pangloss/vim-javascript'
"Bundle 'prettier/vim-prettier'
"  let g:prettier#config#tab_width = 4


call vundle#end()            " required
filetype plugin indent on    " required

" END OF VUNDLE

"""""""""""
" General "
"""""""""""

syntax on

filetype plugin indent on

colorscheme vim-monokai-tasty
set termguicolors

set ff=unix

set mouse=a

"set clipboard=unnamed,exclude:.*

set encoding=utf-8

set laststatus=2
set statusline=
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}, " filetype
set statusline+=%{&encoding},                " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset

set list listchars=tab:>-,trail:-

set tabstop=2
set shiftwidth=2
set expandtab
set linebreak

set ruler
set number
set cursorline

set showtabline=2
set winwidth=79
set winheight=999
set winminheight=5
set nowrap

set hlsearch
set incsearch
set ignorecase
set smartcase

set modeline
set modelines=10

set showcmd

"Ignore node_modules from wildcard expansions
set wildmode=list:longest,list:full
set wildignore+=*/node_modules/*,*/.git/*,*/logs/*

"""""""""""""""""""""
" Language-specific "
"""""""""""""""""""""

" add Jenkinsfile syntax highlighting
autocmd BufNewFile,BufRead Jenkinsfile set ft=groovy

" Javascript tabwidth
autocmd FileType javascript set softtabstop=4 tabstop=4 shiftwidth=4

""""""""""""""""
" Key bindings "
""""""""""""""""
"Running unit tests
nmap <leader>U :w\|:!npm run test-unit<cr>
nmap <leader>u :w\|:!./node_modules/.bin/mocha %<cr>

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
