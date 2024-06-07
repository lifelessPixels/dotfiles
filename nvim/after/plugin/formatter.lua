require("formatter").setup({
    filetype = {
        lua = {
            require("formatter.filetypes.lua").luaformatter
        },
        c = {
            require("formatter.filetypes.c").clangformat
        },
        cpp = {
            require("formatter.filetypes.cpp").clangformat
        },
        cmake = {
            require("formatter.filetypes.cmake").cmake
        },
        csharp = {
            require("formatter.filetypes.cs").clangformat
        },
        sh = {
            require("formatter.filetypes.sh").shfmt
        },
        tex = {
            require("formatter.filetypes.latex").texlab
        },
        ["*"] = {
            require("formatter.filetypes.any").remove_trailing_whitespace
        }
    }
})

vim.keymap.set("n", "<leader>f", "<Cmd>FormatWrite<CR>")
