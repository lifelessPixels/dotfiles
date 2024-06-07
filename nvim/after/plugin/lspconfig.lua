require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "clangd",
        "cmake",
        "omnisharp",
        "pylsp",
        "asm_lsp",
        "texlab"
    }
})

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.lua_ls.setup({
    capabilities = capabilities
})

lspconfig.clangd.setup({
    capabilities = capabilities,
    cmd = {
        "clangd",
        "--completion-style=detailed",
        "--function-arg-placeholders=0",
        "--enable-config"
    }
})

lspconfig.cmake.setup({
    capabilities = capabilities
})

lspconfig.omnisharp.setup({
    capabilities = capabilities,
    enable_roslyn_analysers = true,
    enable_import_completion = true,
    organize_imports_on_format = true,
    enable_decompilation_support = true,
    filetypes = {
        'cs', 'csproj', 'sln', 'props'
    }
})

lspconfig.pylsp.setup({
    capabilities = capabilities,
    settings = {
        pylsp = {
            plugins = {
                rope_autoimport = {
                    enabled = true
                }
            }
        }
    }
})

lspconfig.asm_lsp.setup({})

lspconfig.texlab.setup({})

vim.keymap.set('n', '<leader>el', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>ep', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<leader>en', vim.diagnostic.goto_next)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
        vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
        vim.keymap.set('n', '<leader>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)
        vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    end,
})
