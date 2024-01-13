require('lualine').setup({
    options = {
        theme = 'nightfox',
        icons_enabled = true,
        section_separators = { left = '', right = '' },
        component_separators = "",
        disabled_filetypes = { -- Filetypes to disable lualine for.
            'packer', 'NvimTree'
        },
    }
})
