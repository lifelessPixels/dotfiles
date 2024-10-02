vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "auto"
vim.opt.completeopt = {'menuone', 'noinsert'}

vim.opt.spelllang = 'en_us,pl_pl'
vim.opt.spell = true

vim.g.mapleader = " "

vim.keymap.set('i', '<C-Space>', '<C-x><C-o>')
vim.keymap.set('i', '<C-@>', '<C-Space>')

vim.keymap.set('n', '<C-c>', '<esc>')

-- unmap arrow keys!
local keys_modes = {"n", "v", "i"}
vim.keymap.set(keys_modes, '<Up>', '<Nop>')
vim.keymap.set(keys_modes, '<Down>', '<Nop>')
vim.keymap.set(keys_modes, '<Left>', '<Nop>')
vim.keymap.set(keys_modes, '<Right>', '<Nop>')
