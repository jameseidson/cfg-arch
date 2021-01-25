call plug#begin('~/.vim/plugged')
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

let mapleader = ","
let tabSize=2
let &softtabstop=tabSize
let &tabstop=tabSize
let &shiftwidth=tabSize

set expandtab
set smarttab
set smartindent
set mouse=a
set number
set showmatch
set wildmenu
set virtualedit+=block
set whichwrap+=<,>,[,]
set title
set laststatus=2
set backspace=indent,eol,start
set background=dark
set clipboard=unnamed
set scrolloff=9999
set ruler
set formatoptions+=t
set showtabline=1
set splitbelow
set splitright
set diffopt=vertical
set formatoptions-=ro
set autoindent
set autowrite
set incsearch
set hlsearch
set smartcase
set ignorecase

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,                 -- false will disable the whole extension
    disable = {},                  -- list of language that will be disabled
  },
}
EOF
