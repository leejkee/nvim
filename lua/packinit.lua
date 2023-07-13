local G = require('G')
-- install packer auto
local packer_bootstrap = false
local install_path = G.fn.stdpath('data')..'\\site\\pack\\packer\\start\\packer.nvim'
local compiled_path = G.fn.stdpath('config')..'\\plugin\\packer_compiled.lua'

if G.fn.empty(G.fn.glob(install_path)) > 0 then
    print('Installing packer.nvim...')
    G.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    G.fn.system({'rm', '-rf', compiled_path})
    G.cmd [[packadd packer.nvim]]
    packer_bootstrap = true
end


require('packer').startup({
    function(use)
        -- packer
        use { 'wbthomason/packer.nvim' }
        -- colorscheme
        use { 'rafamadriz/neon' }
        -- lsp with mason
        use {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig"
        }
        -- use { 'williamboman/nvim-lsp-installer' }

        -- highlight and symbols

        -- git intergation
        use "lewis6991/gitsigns.nvim"

        -- file explorer tree
        use {
            "nvim-neo-tree/neo-tree.nvim",
            requires = {
                "nvim-lua/plenary.nvim",
                "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
                "MunifTanjim/nui.nvim",
            },
        }
        -- cmp for lsp
        use "hrsh7th/nvim-cmp"
        use "hrsh7th/cmp-nvim-lsp"
        use "L3MON4D3/LuaSnip" -- snippets引擎，不装这个自动补全会出问题
        use "saadparwaiz1/cmp_luasnip"
        use "rafamadriz/friendly-snippets"
        use "hrsh7th/cmp-path"
        use "hrsh7th/cmp-cmdline"
        use 'hrsh7th/cmp-nvim-lsp-signature-help'
        use 'hrsh7th/cmp-nvim-lsp-document-symbol'

        use 'nvim-treesitter/nvim-treesitter'
        use "windwp/nvim-autopairs"
        use {
            'akinsho/bufferline.nvim',
            tag = "v2.*",
            requires = 'kyazdani42/nvim-web-devicons'
        }
        -- status line
        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }
    end

})

if packer_bootstrap then
    require('packer').sync()
end
