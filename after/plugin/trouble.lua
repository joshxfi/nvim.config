vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
    { silent = true, noremap = true }
)

require('trouble').setup {
    use_diagnostic_signs = true
}
