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
        end
    }

    use('tpope/vim-fugitive')
    use('tpope/vim-surround')

    use('nvim-tree/nvim-web-devicons')

    use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
    }

    use('nvim-tree/nvim-tree.lua')
    use('romgrk/barbar.nvim')

    use {
        'lewis6991/gitsigns.nvim',
        config = function() require("gitsigns").setup {} end
    }

    use {
        'folke/trouble.nvim',
        requires = { 'nvim-tree/nvim-web-devicons' }
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use {
        'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup {} end
    }

    use {
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/cmp-nvim-lsp',
        'saadparwaiz1/cmp_luasnip',
    }

    use {
        'L3MON4D3/LuaSnip',
        requires = { 'rafamadriz/friendly-snippets' }
    }


    use('stevearc/conform.nvim')
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use {
        'github/copilot.vim',
        config = function()
            vim.keymap.set('i', '<right>', 'copilot#Accept("\\<CR>")', {
                silent = true,
                expr = true,
                replace_keycodes = false
            })
        end
    }
end)
