local G = require('G')
G.api.nvim_create_autocmd({ "BufReadPost" }, { command = [[if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif]] })
G.api.nvim_create_autocmd({ "InsertEnter" }, { command = "hi CursorLine ctermbg=235" })
G.api.nvim_create_autocmd({ "InsertLeave" }, { command = "hi CursorLine ctermbg=none" })
