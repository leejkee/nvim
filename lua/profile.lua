local G = require('G')


---------------------------
--------- Options ---------
---------------------------
-- show the number of line
G.opt.number = true
G.opt.relativenumber = true
-- Show (partial) command in the last line of the screen.
G.opt.showcmd = true
-- Minimal number of columns to use for the line number.
G.opt.numberwidth = 3
-- When 'wildmenu' is on, command-line completion operates in an enhanced mode.
G.opt.wildmenu = true

-- encode
G.opt.encoding = 'utf-8'
G.opt.fileencoding = 'utf-8'

-- Maximum number of items to show in the popup menu(|ins-completion-menu|). Zero means "use available screen space".
-- G.opt.pumheight = 10
-- not conceal any code
G.opt.conceallevel = 0
-- clipboard
G.opt.clipboard = 'unnamedplus'
-- bracket match highlight
G.opt.showmatch = true

-- case
G.opt.incsearch = true
G.opt.inccommand = ''
G.opt.ignorecase = true
G.opt.smartcase = true

G.opt.timeoutlen = 400
G.opt.backspace = 'indent,eol,start'
G.opt.backup = false
G.opt.whichwrap = 'b,s,<,>,h,'
G.opt.mouse = 'a'
G.opt.vb = true
G.opt.hidden = true

-- indent
G.opt.autoindent = true
G.opt.smartindent = true

-- tab
G.opt.tabstop = 4
G.opt.softtabstop = 4
G.opt.shiftwidth = 4
G.opt.smarttab = true
G.opt.expandtab = true

G.opt.backup = false
G.opt.swapfile = false
G.opt.wrap = false
-- G.opt.undofile = true
-- G.opt.undodir = os.getenv('HOME') .. '/.config/nvim/cache/undodir'
G.opt.viminfo = "!,'10000,<50,s10,h"

-- fold
G.opt.foldenable = true
G.opt.foldmethod = 'manual'
-- G.opt.viewdir = os.getenv('HOME') .. '/.config/nvim/cache/viewdir'
G.opt.foldtext = 'v:lua.MagicFoldText()'

G.opt.ma = true
G.opt.cmdheight = 1
G.opt.updatetime = 300
G.opt.shortmess = 'filnxtToOcIF'
G.opt.scrolloff = 5
-- show the current mode {INSERT, VISUAL, NORMAL}
G.opt.showmode = true

-- current line highlight
G.opt.cul = true

-- split
-- G.opt.splitbelow = true
G.opt.splitright = true

-- draw the signcolumn
G.opt.signcolumn = 'yes'
G.opt.fillchars = 'fold:-,stlnc:#,eob: ,foldsep:='

G.opt.termguicolors = true

G.api.nvim_command(':filetype plugin on')

G.g.mapleader = ' '

G.cmd([[
    hi Normal ctermfg=7 ctermbg=NONE cterm=NONE
    colorscheme neon
    let &t_SI .= '\e[5 q'
    let &t_EI .= '\e[1 q'
    let &t_vb = ''
    let &t_ut = ''
]])
