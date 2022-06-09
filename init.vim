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

" width of five lines will be kept when the cursor moves to top or buttom
set scrolloff=5
set sidescrolloff=5
" set the leader key
let mapleader="\<SPACE>"

" show the <space> and <tab>
set list
set listchars=tab:>\ ,trail:-

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" "------------------------------------------
" "Gnome-terminal的bash
" "进入写入模式光标变成竖线
" "------------------------------------------
" if has("autocmd")
"   au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
"   au InsertEnter,InsertChange *
"     \ if v:insertmode == 'i' |
"     \   silent execute '!echo -ne "\e[6 q"' | redraw! |
"     \ elseif v:insertmode == 'r' |
"     \   silent execute '!echo -ne "\e[4 q"' | redraw! |
"     \ endif
"   au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
" endif


au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" set laststatus=2
" =========================
" ===     Vim-Plug      ===
" =========================
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
call plug#begin('C:\Users\cww\AppData\Local\nvim\plugged')
Plug 'scrooloose/nerdtree'
Plug 'connorholyday/vim-snazzy'
Plug 'cateduo/vsdark.nvim'


call plug#end()


" =========================
" ===  theme for color  ===
" =========================
set termguicolors
" let g:vsdark_style = "light"
" let background be transparent, you can add it in your init.vim.
" let g:SnazzyTransparent = 1
colorscheme snazzy

" =========================
" ===        Map        ===
" =========================
nnoremap <LEADER>e :NERDTreeToggle<CR>
map s <nop>
nnoremap S :w<CR>
nnoremap Q :q<CR>
" s+ hjkl to split to left, down, up, right
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sj :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>


" =========================
" ===   size of split   ===
" =========================
" <space>+hjkl to change the size of split
map <LEADER>k :res +3<CR><ESC>
map <LEADER>j :res -3<CR><ESC>
map <LEADER>h :vertical resize -3<CR><ESC>
map <LEADER>l :vertical resize +3<CR><ESC>

" =========================
" ===      new tab      ===
" =========================
map tt :tabe<CR>
map tn :+tabnext<CR>
map tl :-tabnext<CR>
