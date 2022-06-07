" =========================
" ===Basic configuration===
" =========================
syntax on
" show the number of line
set nu
" set the relative number
set relativenumber
" all <tab>s will be replaced <space>s
set expandtab
" display the width of a <tab> as the width of two <space>s
set tabstop=2
" a <tab> will be replaced two <space>s when typing <tab>
set shiftwidth=2
" a <tab> will be converted into a <tab> and zero(softtabstop minus tabstop equals zero) <space>
set softtabstop=2
" ignore the case
set ignorecase
set smartcase
set notimeout
" copy indent from previous line
set autoindent

set jumpoptions=stack
" highlight the current line
set cursorline

" width of five lines will be kept when the cursor moves to top or button
set scrolloff=5
set sidescrolloff=5
" set the leader key
let mapleader="\<SPACE>"

" =========================
" ===     Vim-Plug      ===
" =========================
call plug#begin('C:\Users\cww\AppData\Local\nvim\plugged')
Plug 'scrooloose/nerdtree'
Plug 'connorholyday/vim-snazzy'
Plug 'cateduo/vsdark.nvim'
call plug#end()


" =========================
" ===  theme for color  ===
" =========================
" set termguicolors
" let g:vsdark_style = "light"
" let background be transparent, you can add it in your init.vim.
" let g:SnazzyTransparent = 1
colorscheme snazzy

" =========================
" ===        map        ===
" =========================
nnoremap <LEADER>e :NERDTreeToggle<CR>
