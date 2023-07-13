local G = require('G')
-- neo-tree
G.map({
    -- noremap: only normal, recursive
    -- nnoremap: only normal, not recursive
    {'n', 's',              '<nop>',                        { } },
    {'n', '<leader>t',      ':NeoTreeFloatToggle<CR>',      {noremap = true} },

    -- save, quit
    { 'n', 'S',             ':w<CR>',                       { noremap = true, silent = true } },
    { 'n', 'Q',             ':q<CR>',                       { noremap = true, silent = true } },

    { 'n', '<leader>n',     ':bnext<CR>',                   { noremap = true, silent = true } },
    { 'n', '<leader>N',     ':bNext<CR>',                   { noremap = true, silent = true } },
})
