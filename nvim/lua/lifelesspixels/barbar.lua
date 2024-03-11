vim.g.barbar_auto_setup = false;

require("barbar").setup({
    animation = true,
    sidebar_filetypes = {
        ["neo-tree"] = {event = "BufWipeout"},
        undotree = true
    }
})
