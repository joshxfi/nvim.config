vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use('EdenEast/nightfox.nvim')

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('tpope/vim-surround')

    use('nvim-tree/nvim-web-devicons')

    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {}
        end
    })

    use('nvim-tree/nvim-tree.lua')
    use('lewis6991/gitsigns.nvim')
    use('romgrk/barbar.nvim')
    use('nvim-lualine/lualine.nvim')

    use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
    }

    use {
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/cmp-nvim-lsp',
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
    }

    use('mhartington/formatter.nvim')
    use("github/copilot.vim")
end)
