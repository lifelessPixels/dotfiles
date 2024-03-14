require("persistence").setup({})

vim.keymap.set('n', '<leader>ss', function() require("persistence").load() end)
vim.keymap.set('n', '<leader>sl', function() require("persistence").load({last = true}) end)
