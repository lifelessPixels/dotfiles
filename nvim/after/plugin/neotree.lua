require('neo-tree').setup({
    auto_clean_after_session_restore = true,
    window = {
        mappings = {
            ['P'] = { 'toggle_preview', config = { use_float = true, use_image_nvim = true } },
        }
    }
})

vim.keymap.set('n', '<leader>pt', '<Cmd>Neotree source=filesystem<CR>')
vim.keymap.set('n', '<leader>pb', '<Cmd>Neotree source=buffers<CR>')
vim.keymap.set('n', '<leader>pT', '<Cmd>Neotree source=filesystem action=close<CR>')
vim.keymap.set('n', '<leader>pB', '<Cmd>Neotree source=buffers action=close<CR>')
